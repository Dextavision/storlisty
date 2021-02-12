class Listy {
  String _name;
  bool _isFinished = false;

  Listy(this._name);

  void setFinished() {
    this._isFinished = true;
  }

  String getName() {
    return this._name;
  }
}
