class Document{
  String? doc_title;
  String? doc_path;
  String? doc_date;
  int? page_num;

  Document(this.doc_title, this.doc_path, this.doc_date, this.page_num);

  static List<Document> doc_list = [
    
    Document(
      "August Payroll", 
      "assets/payroll.pdf", 
      "07-03-2023",
      1,
      ),
  ];
}