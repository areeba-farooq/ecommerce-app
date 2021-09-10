class UserModel {
  final int id;
  final String name;
  final String avatar;

  UserModel({
    required this.id,
    required this.name,
    required this.avatar
  });
}

class MsgModel {
  final UserModel sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unRead;

  MsgModel({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unRead
  });
}

//YOU - the current user:
final UserModel currentUser = UserModel(
  id: 0,
  name: 'Current User',
  avatar: 'images/profile4.jpg',
);

//Other Users:
final UserModel mishal = UserModel(
  id: 1,
  name: 'Mishal',
  avatar: 'images/user/girl1.jpg',
);

final UserModel johny = UserModel(
  id: 2,
  name: 'Johny',
  avatar: 'images/user/boy1.jpg',
);
final UserModel smith = UserModel(
  id: 3,
  name: 'Smith',
  avatar: 'images/user/boy2.jpg',
);
final UserModel olivia = UserModel(
  id: 4,
  name: 'Olivia',
  avatar: 'images/user/girl2.jpeg',
);
final UserModel michael = UserModel(
  id: 5,
  name: 'Michael',
  avatar: 'images/user/boy3.jpeg',
);
final UserModel sofia = UserModel(
  id: 6,
  name: 'Sofia',
  avatar: 'images/user/girl3.jpg',
);
final UserModel mickey = UserModel(
  id: 7,
  name: 'Minaal',
  avatar: 'images/user/girl4.jpg',
);


//CHATS ON THE HOME SCREEN:
List<MsgModel> chats = [
  MsgModel(
    sender: olivia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unRead: true,
  ),
  MsgModel(
    sender: smith,
    time: '3:55 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unRead: true,
  ),
  MsgModel(
    sender: michael,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unRead: false,
  ),
  MsgModel(
    sender: mishal,
    time: '5:25 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unRead: true,
  ),
  MsgModel(
    sender: sofia,
    time: '6:12 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unRead: false,
  ),
  MsgModel(
    sender: mickey,
    time: '6:55 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unRead: false,

  ),
  MsgModel(
      sender: johny,
      time: '7:10 PM',
      text: 'Hey, how\'s it going? What did you do today?',
      isLiked: false,
      unRead: false),
];

//MESSAGES IN THE CHAT SCREEN:
List<MsgModel> messages = [
  MsgModel(
      sender: johny,
      time: '4:00 PM',
      text: 'Hey, how\'s it going? What did you do today?',
      isLiked: true,
      unRead: true),
  MsgModel(
      sender: currentUser,
      time: '4:12 PM',
      text: 'Just walked my doge. She was super duper cute. The best pupper!!',
      isLiked: false,
      unRead: true),
  MsgModel(
      sender: johny,
      time: '4:15 PM',
      text: 'How\'s the doggo?',
      isLiked: false,
      unRead: true),
  MsgModel(
      sender: johny,
      time: '4:16 PM',
      text: 'All the food',
      isLiked: true,
      unRead: true),
  MsgModel(
      sender: currentUser,
      time: '4:19 PM',
      text: 'Nice! What kind of food did you eat?',
      isLiked: false,
      unRead: true),
  MsgModel(
      sender: johny,
      time: '4:21 PM',
      text: 'I ate so much foo today.',
      isLiked: false,
      unRead: true),
  MsgModel(
      sender: currentUser,
      time: '4:25 PM',
      text: 'Oh! go for a walk now.',
      isLiked: false,
      unRead: true),
  MsgModel(
      sender: johny,
      time: '4:27 PM',
      text: 'Yeah, Thanks. Are you coming with me on walk?',
      isLiked: false,
      unRead: true),
  MsgModel(
      sender: currentUser,
      time: '4:28 PM',
      text: 'Sure. just wait for a while',
      isLiked: false,
      unRead: true),
  MsgModel(
      sender: johny,
      time: '4:30 PM',
      text: 'Ok',
      isLiked: false,
      unRead: true),
  MsgModel(
      sender: johny,
      time: '4:32 PM',
      text: 'We will go for dinner too. OK?',
      isLiked: true,
      unRead: true),
  MsgModel(
      sender: currentUser,
      time: '4:35 PM',
      text: 'Cool',
      isLiked: true,
      unRead: true),
];