import 'package:mailer/mailer.dart' as mailer;
import 'package:mailer/smtp_server/gmail.dart' as gmail_smpt;
import 'package:serverpod/serverpod.dart';
import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';
import 'package:serverpod_auth_server/module.dart' as auth;
//import 'package:path/path.dart' as p;
import 'dart:io';

// This is the starting point of your Serverpod server. In most cases, you will
// only need to make additions to this file if you add future calls,  are
// configuring Relic (Serverpod's web-server), or need custom setup work.

void run(List<String> args) async {
  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(args, Protocol(), Endpoints());

  // If you are using any future calls, they need to be registered here.
  // pod.registerFutureCall(ExampleFutureCall(), 'exampleFutureCall');

  // Setup a default page at the web root.
  //pod.webServer.addRoute(RouteRoot(), '/');
  //pod.webServer.addRoute(RouteRoot(), '/index.html');

  // Setup a redirect route for Google sign in. Responsible for sending back
  // the serverAuthCode to the client and closing the signin window, after a
  // successful sign in.
  pod.webServer.addRoute(auth.RouteGoogleSignIn(), '/googlesignin');

    // Flutter Web app (official way in Serverpod 3.1.x)
  final flutterWebDir = Directory('web');
  pod.webServer.addRoute(FlutterRoute(flutterWebDir));

  auth.AuthConfig.set(
    auth.AuthConfig(
      sendValidationEmail: (session, email, validationCode) async {
        // Retrieve the credentials
        final gmailEmail = pod.getPassword('gmailEmail')!;
        final gmailPassword = pod.getPassword('gmailPassword')!;

        //Create a SMTP client for Gmail.
        final smtpServer = gmail_smpt.gmail(gmailEmail, gmailPassword);

        //Create an email message with the validation code.
        final message = mailer.Message()
          ..from = mailer.Address(gmailEmail)
          ..recipients.add(email)
          ..subject = 'Verfication code for Serverpod'
          ..html = 'Your verification code is: $validationCode';

        //Send the email message.
        try {
          await mailer.send(message, smtpServer);
        } catch (_) {
          //Return false if the email could not be sent.
          return false;
        }

        print('Validation code: $validationCode');
        return true;
      },
      sendPasswordResetEmail: (session, userInfo, validationCode) async {
        // Retrieve the credentials
        final gmailEmail = pod.getPassword('gmailEmail')!;
        final gmailPassword = pod.getPassword('gmailPassword')!;

        // Create a SMTP client for Gmail.
        final smtpServer = gmail_smpt.gmail(gmailEmail, gmailPassword);

        // Create an email message with the password reset link.
        final message = mailer.Message()
          ..from = mailer.Address(gmailEmail)
          ..recipients.add(userInfo.email!)
          ..subject = 'Password reset link for Serverpod'
          ..html = 'Here is your password reset code: $validationCode';

        // Send the email message.
        try {
          await mailer.send(message, smtpServer);
        } catch (_) {
          // Return false if the email could not be sent.
          return false;
        }

        print('Validation code: $validationCode');
        return true;
      },
    ),
  );

  // Start the server.
  await pod.start();
}
