import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class LaunchSitesEndpoint extends Endpoint {
  ///Adds a Launch Site in DB
  Future<int> addLaunchSites(Session session, LaunchSites launchSites) async {
    var newLaunchSite = await LaunchSites.db.insertRow(session, launchSites);
    var newLaunchSiteId = newLaunchSite.id;
    return newLaunchSiteId!;
  }

  ///Fetches all Launch Site from DB
  Future<List<LaunchSites>> getLaunchSite(Session session, {String? keyword}) async {
    return await LaunchSites.db.find(
      session,
      orderBy: (launchsite) => launchsite.site,
    );
  }

    ///Adds a new Site and returns all Sites
  Future<List<LaunchSites>> addAndReturnLaunchSites(Session session, LaunchSites launchsites) async {
    await LaunchSites.db.insertRow(session, launchsites);
    var allSites = await LaunchSites.db.find(
      session,
      orderBy: (launchsites) => launchsites.site,
      //To maintain the order of the solar system, the entire List is managed by Id
    );
    return allSites;
  }
}

