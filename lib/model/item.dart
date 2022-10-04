class Item {
  final String title;
  final String content;
  final String photo;
  final String dateTime;
  final String onDone;
  final String avatar;
  Item({
    required this.title,
    required this.content,
    required this.photo,
    required this.dateTime,
    required this.onDone,
    required this.avatar,
  });
  static List<Item> newFeedItem() {
    final items = <Item>[];
    items.addAll(
      [
        Item(
          title:
              'Vụ án đang được mở rộng điều tra, sai phạm đến đâu xử phạt đến đó, không có vùng cấm.?',
          content:
              'Ngày 4-10, tại hội nghị họp báo về tình hình kinh tế- xã hội 9 tháng đầu năm do UBND tỉnh Bình Dương tổ chức',
          avatar: 'assets/images/duongvu.jpeg',
          dateTime: '20/10/2022',
          onDone: 'Duyệt',
          photo: 'assets/images/ronaldo.jpeg',
        ),
        Item(
          title:
              'Trận đấu thứ 5 liên tiếp tại giải Ngoại hạng Anh, Ronaldo phải ngồi dự bị. Nhưng thậm chí lần này, siêu sao người Bồ Đào Nha còn không được sử dụng',
          content:
              'Tại thời điểm mùa hè 2022, Cristiano Ronaldo như thể đã biết trước tương lai của mình vậy. Sau khi MU bổ nhiệm Erik Ten Hag vào ghế nóng',
          avatar: 'assets/images/duongvu.jpeg',
          dateTime: '20/10/2022',
          onDone: 'Duyệt',
          photo: 'assets/images/rashford.jpeg',
        ),
        Item(
          title:
              'MU hậu derby Manchester: 4 đối thủ tiềm năng, thầy trò Ten Hag trở lại cuộc đua?',
          content:
              'Trước trận derby Manchester ở vòng 9 Ngoại hạng Anh, MU bay cao với chuỗi 4 trận thắng liên tiếp. Đã thế, các đối thủ mà Quy đỏ đánh bại đều được đánh giá là khó chơi, bao gồm Liverpool, Southampton, Leicester, Arsenal',
          avatar: 'assets/images/duongvu.jpeg',
          dateTime: '20/10/2022',
          onDone: 'Duyệt',
          photo: 'assets/images/sancho.jpeg',
        ),
      ],
    );
    return items;
  }
}
