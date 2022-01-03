import "dart:io";
void main(List<String> argsX){
  List<String> args = List.of(argsX);
  List<File> fls = args.searchForSB(".file").map<File>((String path)=>File(path)).toList();
  List<String> txts = fls.where((File fl)=>fl.existsSync()).map<String>((File fl)=>fl.readAsStringSync()).toList();
  args.addAll(txts);

  print(args.map((String arg)=>{arg: Runes(arg).toList().map((int elm)=>"${elm.toRadixString(16).padLeft(4,"0")}").toList().join(" ")}).toList());
}
extension SearchInList<T> on List<T> {
  List<T> searchFor(T target,[List<T>? base]){
    base ??= <T>[];
    if(this.contains(target)){
      int existLoc = this.indexOf(target);
      if(0 <= existLoc && existLoc < this.length){
        base.add(this[existLoc+1]);
        this.removeAt(existLoc);
        this.removeAt(existLoc);
        return this.searchFor(target,base);
      }else{
        return base;
      }
    }else{
      return base;
    }
  }
}
extension SearchArgInList on List<String>{
  List<String> searchForSB(String target,String top [List<String>? base])=>this.searchFor(top + target, base);
  List<String> searchForEB(String target,String delim, [List<T>? base]){
    base ??= <String>[];
    this.where((String con)=>con.contains(delim)).map<List<String>>((String con)=>con.split(delim)).where((List<String> el)=> el.first.startWith(top)).where((List<String> el)=> el.first == (top + target))
  }
}