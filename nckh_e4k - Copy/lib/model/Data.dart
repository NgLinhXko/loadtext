class Data {
  Data({
      this.id, 
      this.qtype, 
      this.name, 
      this.img, 
      this.nlevel, 
      this.note, 
      this.ifile, 
      this.mp3, 
      this.extra, 
      this.embed, 
      this.code, 
      this.playlist, 
      this.vtype, 
      this.direction, 
      this.pid, 
      this.sid, 
      this.userId, 
      this.ishare, 
      this.ivalidated, 
      this.irate, 
      this.iorder, 
      this.status, 
      this.insertdate, 
      this.lastupdate, 
      this.nid, 
      this.cid,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    qtype = json['qtype'];
    name = json['name'];
    img = json['img'];
    nlevel = json['nlevel'];
    note = json['note'];
    ifile = json['ifile'];
    mp3 = json['mp3'];
    extra = json['extra'];
    embed = json['embed'];
    code = json['code'];
    playlist = json['playlist'];
    vtype = json['vtype'];
    direction = json['direction'];
    pid = json['pid'];
    sid = json['sid'];
    userId = json['user_id'];
    ishare = json['ishare'];
    ivalidated = json['ivalidated'];
    irate = json['irate'];
    iorder = json['iorder'];
    status = json['status'];
    insertdate = json['insertdate'];
    lastupdate = json['lastupdate'];
    nid = json['nid'];
    cid = json['cid'];
  }
  int? id;
  int? qtype;
  String? name;
  String? img;
  int? nlevel;
  String? note;
  String? ifile;
  String? mp3;
  String? extra;
  String? embed;
  dynamic code;
  dynamic playlist;
  dynamic vtype;
  int? direction;
  int? pid;
  int? sid;
  int? userId;
  int? ishare;
  int? ivalidated;
  int? irate;
  int? iorder;
  int? status;
  dynamic insertdate;
  dynamic lastupdate;
  int? nid;
  int? cid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['qtype'] = qtype;
    map['name'] = name;
    map['img'] = img;
    map['nlevel'] = nlevel;
    map['note'] = note;
    map['ifile'] = ifile;
    map['mp3'] = mp3;
    map['extra'] = extra;
    map['embed'] = embed;
    map['code'] = code;
    map['playlist'] = playlist;
    map['vtype'] = vtype;
    map['direction'] = direction;
    map['pid'] = pid;
    map['sid'] = sid;
    map['user_id'] = userId;
    map['ishare'] = ishare;
    map['ivalidated'] = ivalidated;
    map['irate'] = irate;
    map['iorder'] = iorder;
    map['status'] = status;
    map['insertdate'] = insertdate;
    map['lastupdate'] = lastupdate;
    map['nid'] = nid;
    map['cid'] = cid;
    return map;
  }

}