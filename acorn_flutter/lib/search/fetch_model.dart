import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/export/export_fetch.dart';

class FetchModel {
  final FetchSeasRepository _fetchSeasRepository = FetchSeasRepository();
  final FetchPlaceRepository _fetchPlaceRepository = FetchPlaceRepository();
  final FetchStarsRepository _fetchStarsRepository = FetchStarsRepository();
  final FetchCattRepository _fetchCattRepository = FetchCattRepository();
  final FetchPattRepository _fetchPattRepository = FetchPattRepository();
  final FetchOrgsRepository _fetchOrgsRepository = FetchOrgsRepository();
  final FetchUnivsRepository _fetchUnivsRepository = FetchUnivsRepository();
  final FetchPublisherRepository _fetchPublisherRepository = FetchPublisherRepository();
  final FetchPeopleRepository _fetchPeopleRepository = FetchPeopleRepository();
  final FetchShipsRepository _fetchShipsRepository = FetchShipsRepository();
  final FetchCategoriesRepository _fetchCategoriesRepository = FetchCategoriesRepository();
  final FetchTermsRepository _fetchTermsRepository = FetchTermsRepository();

  final FetchPrincipalRepository _fetchPrincipalRepository = FetchPrincipalRepository();

  Future<List<dynamic>> fetchSeas() async {
    return await _fetchSeasRepository.fetchSeas();
  }

  Future<List<dynamic>> fetchPlaces() async {
    return await _fetchPlaceRepository.fetchPlaceInvolvedInDetail();
  }

  Future<List<dynamic>> fetchStars() async {
    return await _fetchStarsRepository.fetchStarsInDetail();
  }

  Future<List<dynamic>> fetchCatt() async {
    return await _fetchCattRepository.fetchCattsInDetail();
  }

  Future<List<dynamic>> fetchPatt() async {
    return await _fetchPattRepository.fetchPattsInDetail();
  }

  Future<List<dynamic>> fetchOrgs() async {
    return await _fetchOrgsRepository.fetchOrgsInDetail();
  }

  Future<List<dynamic>> fetchUnivs() async {
    return await _fetchUnivsRepository.fetchUnivsInDetail();
  }

  Future<List<dynamic>> fetchPubs() async {
    return await _fetchPublisherRepository.fetchPublisherInDetail();
  }

  Future<List<dynamic>> fetchPeople() async {
    return await _fetchPeopleRepository.fetchPeopleInDetail();
  }

  Future<List<dynamic>> fetchShips() async {
    return await _fetchShipsRepository.fetchShipsInDetail();
  }

  Future<List<dynamic>> fetchCategories() async {
    return await _fetchCategoriesRepository.fetchCategoriesInDetail();
  }

  Future<List<dynamic>> fetchTerms() async {
    return await _fetchTermsRepository.fetchTermsInDetail();
  }

/*  Future<List<dynamic>> fetchPrincipal() async {
    return await _fetchPrincipalRepository.fetchPrincipalByDetailId();
  }*/

// 他のデータフェッチメソッドを追加
}
