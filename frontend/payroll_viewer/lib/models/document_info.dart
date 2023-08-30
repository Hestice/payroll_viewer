class Document{
  String? doc_title;
  String? doc_date;
  String? doc_time;
  String doc_link;
  int? page_num;

  Document(this.doc_title, this.doc_date, this.doc_time, this. doc_link, this.page_num);

  static List<Document> doc_list = [
    
    Document(
      "August Payroll", 
      "08-15-2023",
      "1:02",
      "https://www.adobe.com/support/products/enterprise/knowledgecenter/media/c4611_sample_explain.pdf",
      1,
    ),
    Document(
      "August Bonus", 
      "08-26-2023",
      "2:33",
      "https://www.adobe.com/support/products/enterprise/knowledgecenter/media/c4611_sample_explain.pdf",
      1,
    ),
  ];
}