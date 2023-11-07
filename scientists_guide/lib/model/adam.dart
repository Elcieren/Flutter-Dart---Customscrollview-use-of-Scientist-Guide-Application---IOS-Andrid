class Adam{
  final String _adamAdi;
   final String _adamTarihi;
    final String _adamDetayi;
    final String _adamKucukResim;
    final String _adamBuyukResim;
  get adamAdi => this._adamAdi;
  get adamTarihi => this._adamTarihi;
  get adamDetayi => this._adamDetayi;
  get adamKucukResim => this._adamKucukResim;
  get adamBuyukResim => this._adamBuyukResim;




  

  
 

  Adam(this._adamAdi, this._adamTarihi, this._adamDetayi, this._adamKucukResim, this._adamBuyukResim);

  @override
  String toString() {
    
    return '$_adamAdi - $_adamBuyukResim';
  }
}