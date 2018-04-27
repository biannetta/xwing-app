class Pilot {
  String callsign;
  int pilotSkill;

  Pilot(this.callsign, this.pilotSkill);

  Pilot.fromJSON(Map<String, String> jsonMap) {
    this.callsign = jsonMap['callsign'];
    this.pilotSkill = int.parse(jsonMap['pilotSkill']);
  }

  @override
  String toString() {
    return this.callsign;
  }
}