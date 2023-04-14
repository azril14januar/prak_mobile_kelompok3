class News {
  int id;
  String likeCount, title, author, banner, date, desc;

  News(
      {required this.id,
      required this.likeCount,
      required this.title,
      required this.author,
      required this.banner,
      required this.date,
      required this.desc});
}

var newsList = [
  News(
    id: 1, 
    likeCount: "1.1k", 
    title: "[Exclusive] 'Deleting Shinnara, is it possible?'... Limitations and alternatives to boycott in the music industry,", 
    author: "Kim Jojo", 
    banner: "https://dispatch.cdnser.be/cms-content/uploads/2023/04/05/e3a345e5-8758-48f4-963e-b29017d0cb5a.png", 
    date: "2023.04.10 05:09 PM", 
    desc: "[Dispatch=Reporter Min Ji Gu] If you go to Shin Nara, there is Ive. If you go to Shinnara, there is Jisoo. If you go to Shinnara, there are New Jeans, NCT Dojae, and Seventeen. 'Starship declared a boycott of Shin Nara (record)' for the first time in the music industry. WM, IST, Pledis, and SM also excluded Synnara from the announcement of new album pre-orders. However, Shinnara's album list remains the same. Nothing has changed. Is it the 'unplay' (media play) of the music agency? Or is it a structural problem in music distribution? 'Dispatch' looked into the Shinnara controversy. First of all, I made a call to 18 agencies that were scheduled to make a comeback between April and June. The problems, limitations, and alternatives thought by officials in the music industry were solved through 'Q&D'.",
  ),

];