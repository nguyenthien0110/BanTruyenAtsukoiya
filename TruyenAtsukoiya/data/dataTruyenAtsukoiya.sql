USE [TruyenAtsukoiya]
GO
/****** Object:  ForeignKey [fk_MaBoTruyen]    Script Date: 01/10/2022 05:39:58 ******/
ALTER TABLE [dbo].[Truyen] DROP CONSTRAINT [fk_MaBoTruyen]
GO
/****** Object:  Table [dbo].[Truyen]    Script Date: 01/10/2022 05:39:58 ******/
ALTER TABLE [dbo].[Truyen] DROP CONSTRAINT [fk_MaBoTruyen]
GO
DROP TABLE [dbo].[Truyen]
GO
/****** Object:  Table [dbo].[BoTruyen]    Script Date: 01/10/2022 05:39:57 ******/
DROP TABLE [dbo].[BoTruyen]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 01/10/2022 05:39:58 ******/
DROP TABLE [dbo].[NguoiDung]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 01/10/2022 05:39:58 ******/
DROP TABLE [dbo].[TinTuc]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 01/10/2022 05:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](200) NULL,
	[NoiDung1] [ntext] NULL,
	[NoiDung2] [ntext] NULL,
	[NoiDung3] [ntext] NULL,
	[TenFileAnh] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TinTuc] ON
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung1], [NoiDung2], [NoiDung3], [TenFileAnh]) VALUES (1, N'Naruto bị "nerf"... hóa ra là vì đã mất "hào quang nhân vật chính" vào tay con trai Boruto', N'1. Tất nhiên không phải vì tuổi tác. Naruto vẫn còn trẻ. Xét về sức mạnh, Naruto vẫn nên là ninja mạnh nhất trong thế giới của Boruto

Naruto bị nerf... hóa ra là vì đã mất hào quang nhân vật chính vào tay con trai Boruto - Ảnh 1.
Để tìm đáp án cho việc tại sao Naruto yếu hơn trong Boruto so với phần trước, nhiều người đã trả lời là do tuổi tác của cậu ấy. Tuy nhiên không phải như vậy, Naruto vẫn còn khá trẻ. Trong Boruto,  anh ấy ít nhiều mới ngoài 30 tuổi.

Vì vậy, dựa trên thang cấp độ sức mạnh của các nhân vật trong series Naruto từ trước đến nay, Hokage đệ thất vẫn là ninja mạnh nhất thế giới.', N'2. Naruto trở nên yếu hơn do yêu cầu về cốt truyện?

Naruto bị nerf... hóa ra là vì đã mất hào quang nhân vật chính vào tay con trai Boruto - Ảnh 2.
Bộ truyện Boruto là về thế hệ kế tiếp và nhân vật chính của nó là Boruto Uzumaki. Và để nhân vật có thể phát triển và tỏa sáng, thì cần có những xung đột mới xảy đến, chẳng hạn như có kẻ thù mới mạnh mẽ. Tuy vậy, với sức mạnh của Naruto và Sasuke, hiển nhiên họ sẽ có thể giải quyết nó một cách dễ dàng.

Vì vậy, để nhân vật chính có thể phát triển trong câu chuyện của mình, Naruto đành chịu cảnh nerf mà yếu đi theo nhiều cách khác nhau cho con trai còn có đất thể hiện chứ! Đó là điều đội ngũ sản xuất Boruto cần phải làm để xây dựng một câu chuyện mới.', N'3. Naruto không còn là nhân vật chính trong bộ truyện Boruto nữa

Naruto bị nerf... hóa ra là vì đã mất hào quang nhân vật chính vào tay con trai Boruto - Ảnh 3.
Câu trả lời ngắn gọn nhưng hợp lý tại sao Naruto lại yếu đi trong Boruto, đó là cậu ấy không phải là nhân vật chính nữa. Nhân vật chính giờ là con trai của anh - Boruto Uzumaki và trọng tâm câu chuyện là sự phát triển của cậu bé. Vâng, cuộc hành trình của Naruto đã kết thúc, đó là lý do tại sao anh ấy bị yếu đi trong câu chuyện của Boruto.', N'naruto-mat hao quan nhan vat chinh.jpg')
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung1], [NoiDung2], [NoiDung3], [TenFileAnh]) VALUES (2, N'Chứng kiến cảnh King Hỏa Hoạn thua thảm, các fan One Piece cho rằng "đời người hơn nhau ở ông thuyền trưởng"', N'Dù có nhiều điểm khá tương đồng tuy nhiên King lại chịu kết cục thất bại chỉ vì thuyền trưởng không phải là main. Đó là ý kiến của nhiều độc giả sau khi One Piece chap 1036 chứng kiến tam tai này bị đánh bại.', N'One Piecechap 1036 chứng kiến cảnh King Hỏa Hoạn bị Zoro hạ gục một cách khá bất ngờ và khiến nhiều độc giả cảm thấy hụt hẫng. Được giới thiệu là một tam tai mạnh nhất dưới trướng Tứ Hoàng, lại có xuất thân rất khủng thế nhưng nội tại "chống main thì bại" một lần nữa lại được thể hiện. Nhìn vào Zoro và King, khán giả cũng đã chỉ ra những điểm tương đồng giữa 2 nhân vật này cũng như chỉ ra nguyên nhân mà King lại thất bại trước Zoro.

Chứng kiến cảnh King Hỏa Hoạn thua thảm, các fan One Piece cho rằng đời người hơn nhau ở ông thuyền trưởng.
Như chúng ta đã biết, cả King và Zoro đều có cách vào băng hải tặc của mình khá giống nhau. Trong khi Zoro được Luffy cứu và mời vào băng thì King cũng được Kaido làm điều tương tự và mời vào băng Bách Thú. Cả 2 đều được cho là những kiếm sĩ ưu tú trong băng hải tặc của mình và sử dụng kiếm như là một thứ vũ khí lợi hại.
', N'Một chi tiết giống nhau thú vị khác giữa Zoro và King đó chính là việc cả hai đều từng lập lời hứa với thuyền trưởng của mình là không bao giờ để thua bất cứ một đối thủ nào cho đến khi thuyền trưởng của họ trở thành Vua Hải Tặc. Đối với Zoro sau khi để thua Mắt Diều Hâu, anh đã hứa với Luffy rằng trước khi thuyền trưởng của mình trở thành Vua Hải Tặc anh sẽ không thua bất cứ đối thủ nào. Trong khi đó thì đối với King Hỏa Hoạn, sau khi nói chuyện về việc anh ta kỳ vọng vào Kaido sẽ trở thành Vua Hải Tặc, King cũng từng hứa sẽ không thua bất cứ đối thủ nào trước khi thuyền trưởng của mình làm được điều này.

Chứng kiến cảnh King Hỏa Hoạn thua thảm, các fan One Piece cho rằng đời người hơn nhau ở ông thuyền trưởng.
Tuy nhiên đời thật không như mơ, cuối cùng một nhân vật có sức mạnh như King lại bị Zoro, một nhân vật có nhiều điểm tương đồng với mình đánh bại. Giờ đây cánh tay phải đắc lực của Tứ Hoàng Kaido đã bị cánh tay phải đắc lực của Vua Hải Tặc tương lai đánh bại. Chứng kiến cảnh này nhiều độc giả chỉ biết than thở rằng có lẽ thứ duy nhất mà King khác Zoro đó chính là chống lại main. Nhiều độc giả hài hước còn cho rằng, sự khác nhau giữa 2 người này đó chính là "đời người hơn nhau ở thằng thuyền trưởng" mà thôi!

Chứng kiến cảnh King Hỏa Hoạn thua thảm, các fan One Piece cho rằng đời người hơn nhau ở ông thuyền trưởng .
Các bạn thấy sao về việc King bị đánh bại và sự tương đồng giữa nhân vật này với kiếm sĩ băng Mũ Rơm Zoro.', N'one piece-Zoro danh bai kinh.jpg')
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung1], [NoiDung2], [NoiDung3], [TenFileAnh]) VALUES (4, N'Thám Tử Lừng Danh Conan Movie 25 tung trailer mới toanh, kéo dài 60 giây nhưng khiến khán giả đứng ngồi không yên', N'Theo kế hoạch, Thám Tử Lừng Danh Conan Movie 25: The Bride Of Halloween sẽ chính thức công chiếu tại các rạp Nhật Bản vào tháng 4 năm 2022.', N'Mới đây, trong tạp chí Weekly Shonen Sunday #1 2022 của nhà xuất bản Shogakukan đã cung cấp cho chúng ta thêm nhiều thông tin mới về tựa movie thứ 25 của chuỗi phim Thám Tử Lừng Danh Conan. Như những gì đã được hé lộ sau Viên Đạn Đỏ Thẩm, movie 25 sẽ là câu chuyện về Amuro/Bourbon/Rei Furuya ngày anh còn theo học tại học viện cảnh sát.Thám Tử Lừng Danh Conan Movie 25 tung trailer mới toanh, kéo dài 60 giây nhưng khiến khán giả đứng ngồi không yên.
Visual Thám Tử Lừng Danh Conan Movie 25: Cô Dâu Halloween do chính tác giả Gosho Aoyama vẽ

Theo những thông tin mới được công bố trong tạp chí, tựa phim sắp ra mắt trên sẽ có tên đầy đủ là Detective Conan: The Bride Of Halloween - Thám Tử Lừng Danh Conan Movie 25: Cô Dâu Haloween. Phim được tiết lộ sẽ có góp mặt của Takagi và Sato và câu chuyện xoay quanh đám cưới của 2 người này. Trước đó thì hình ảnh visual trên đã khiến nhiều khán giả vô cùng tò mò rằng: Liệu cặp đôi Takagi và Sato có cưới nhau không hay họ chỉ đang hóa trang để thực hiện nhiệm vụ nào đó? Câu chuyện của hai người này sẽ kết nối với "bộ 5 cánh hoa anh đào" như thế nào?

Trailer mới nhất của hám Tử Lừng Danh Conan Movie 25: The Bride Of Halloween

Và tất cả câu trả lời này đã có trong trailer của Thám Tử Lừng Danh Conan Movie 25: The Bride Of Halloween được tung ra ngày hôm nay. Clip dài đúng 1 phút này đã cho chúng ta có một cái nhìn khái quát nhất về nội dung của movie Conan 25 lần này. Hình ảnh cô dâu chú rể Takagi và Sato cũng được làm nổi bật bên cạnh hình ảnh của Conan nhìn Ran trong lễ cưới cũng được khán giả hết sức quan tâm. Nhiệm vụ lần này của cậu thám tử nhí Conan hứa hẹn sẽ rất nhiều khó khăn cũng như kịch tính.cc
', N'Thám Tử Lừng Danh Conan Movie 25 tung trailer mới toanh, kéo dài 60 giây nhưng khiến khán giả đứng ngồi không yên.
Thám Tử Lừng Danh Conan Movie 25: The Bride Of Halloween sẽ được thực hiện bởi TMS Entertainment. Đạo diễn của phim là Susumu Mitsunaka. Kịch bản phim do Takahiro Ookura, người đã viết nên câu chuyện Thám Tử Lừng Danh Conan: Cú Đấm Sapphire Xanh và Bản Tình Ca Màu Đỏ Thẫm.

Thám Tử Lừng Danh Conan Movie 25 tung trailer mới toanh, kéo dài 60 giây nhưng khiến khán giả đứng ngồi không yên.
Khán giả chú ý tới hình ảnh Conan nhìn Ran trong trailer mới nhất

Theo kế hoạch, Thám Tử Lừng Danh Conan Movie 25: Cô Dâu Halloween sẽ chính thức ra rạp Nhật bản vào ngày 15 tháng 4 năm 2022. Trước đó, vào ngày 4 tháng 12 năm 2021, series anime chuyển thể từ ngoại truyện Học Viện Cảnh Sát sẽ ra mắt khán giả. Anime này sẽ giới thiệu cho chúng ta các nhân vật trong movie 25 nên hãy đón xem nó để có cái nhìn tổng quát nhất nhé!

Các bạn thấy sao về trailer mới của Thám Tử Lừng Danh Conan Movie 25? Hãy để lại ý kiến của mình nhé!', N'Cô Dâu Halloween.jpg')
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 01/10/2022 05:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [tendangnhap_duynhat] UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON
INSERT [dbo].[NguoiDung] ([id], [TenDangNhap], [MatKhau]) VALUES (1, N'Nthien', N'123')
INSERT [dbo].[NguoiDung] ([id], [TenDangNhap], [MatKhau]) VALUES (4, N'Hoanganh', N'0412')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
/****** Object:  Table [dbo].[BoTruyen]    Script Date: 01/10/2022 05:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoTruyen](
	[MaBoTruyen] [int] IDENTITY(1,1) NOT NULL,
	[TenBoTruyen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBoTruyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BoTruyen] ON
INSERT [dbo].[BoTruyen] ([MaBoTruyen], [TenBoTruyen]) VALUES (1, N'One Piece')
INSERT [dbo].[BoTruyen] ([MaBoTruyen], [TenBoTruyen]) VALUES (2, N'Conan')
INSERT [dbo].[BoTruyen] ([MaBoTruyen], [TenBoTruyen]) VALUES (3, N'Doraemon')
INSERT [dbo].[BoTruyen] ([MaBoTruyen], [TenBoTruyen]) VALUES (4, N'Dragon Ball')
INSERT [dbo].[BoTruyen] ([MaBoTruyen], [TenBoTruyen]) VALUES (5, N'Naruto')
SET IDENTITY_INSERT [dbo].[BoTruyen] OFF
/****** Object:  Table [dbo].[Truyen]    Script Date: 01/10/2022 05:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Truyen](
	[MaTruyen] [int] IDENTITY(1,1) NOT NULL,
	[TenTruyen] [nvarchar](300) NULL,
	[TacGia] [nvarchar](100) NULL,
	[Gia] [int] NULL,
	[SoLuong] [int] NULL,
	[MoTa] [ntext] NULL,
	[TenFileAnh] [nvarchar](500) NULL,
	[MaBoTruyen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTruyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Truyen] ON
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaBoTruyen]) VALUES (1, N'DORAEMON TRUYỆN DÀI - TẬP 1 - CHÚ KHỦNG LONG CỦA NOBITA', N'Fujiko F Fujio', 19500, 10, N'Tình cờ tìm được một quả trứng khủng long hóa thạch, Nobita đã dùng bảo bối "Khăn trùm thời gian" đưa quả trứng trở về thời điểm 100 triệu năm trước và ấp cho trứng nở. Nỗ lực của cậu đã thành công khi loài bò sát thuộc chi Futabasaurus chào đời, được Nobita đặt tên là Pīsuke. Nobita và Doraemon bí mật chăm sóc Pīsuke đến khi trưởng thành, tình bạn giữa cậu và khủng long cũng được vun đắp theo thời gian. Đến khi Pīsuke không thể sống vừa trong nhà nữa, Nobita nuôi khủng long ở hồ nước trong công viên, không may cư dân thành phố phát hiện ra và tiến hành khảo cứu; Nobita và Doraemon buộc phải thả Pīsuke về lại quê hương ở thời kỳ Creta muộn100 triệu năm trước.

Trên đường đi, họ bị một tay săn khủng long xuyên thời gian bám đuôi với mưu đồ cướp lấy Pīsuke; và mặc dù Nobita cuối cùng cũng đưa được Pīsuke trở về đúng niên đại, điểm đến lại lạc sang khu vực Bắc Mỹ thay vì quần đảo Nhật Bản. Phát hiện ra sự nhầm lẫn này, Doraemon, Nobita, Shizuka,Jaian,Suneo đã cùng quay lại quá khứ một lần nữa, tuy nhiên khi đến nơi thì "Cỗ máy thời gian" bị hỏng, và họ quyết định hộ tống Pīsuke đến Nhật Bản men theo dải đất nối liền hai châu lục thời cổ đại.

Với việc sử dụng "Chong chóng tre" cùng nhiều bảo bối hỗ trợ khác, nhóm bạn đã băng qua hàng ngàn cây số và giáp mặt với nhiều loài khủng long như Ornithomimosaurus, Apatosaurus, Tyrannosaurus, Pteranodon. Không may họ vẫn bị tổ chức săn trộm khủng long, đứng đầu là tỉ phú Dollmanstein, theo dõi và sau vài lần đụng độ, Jaian, Suneo và Shizuka đã bị chúng bắt và đưa về căn cứ làm con tin. Nobita và Doraemon liều mình giải cứu bạn bè, nhưng may mắn là trong lúc nguy khốn, "Đội Tuần tra Thời gian" đã đến ứng cứu kịp thời, toàn khu căn cứ bị phá hủy. Cuối cùng Nobita đã đưa Pīsuke đến Nhật Bản cổ đại an toàn, cả nhóm cũng về được nhà nhờ máy thời gian của đội tuần tra.', N'Doraemon1.jpg', 3)
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaBoTruyen]) VALUES (2, N'One Piece Tập 1: Romance Dawn - Bình Minh Của Cuộc Phiêu Lưu', N'Eiichiro Oda', 19500, 10, N'One Piece (Vua Hải Tặc) bộ truyện thuộc thể loại truyện tranh hành động kể về một cậu bé tên Monkey D. Luffy, giong buồm ra khơi trên chuyến hành trình tìm kho báu huyền thoại One Piece và trở thành Vua hải tặc. Để làm được điều này, cậu phải đến được tận cùng của vùng biển nguy hiểm và chết chóc nhất thế giới: Grand Line (Đại Hải Trình). Luffy đội trên đầu chiếc mũ rơm như một nhân chứng lịch sử vì chiếc mũ rơm đó đã từng thuộc về hải tặc hùng mạnh: Hải tặc vương Gol. D. Roger và tứ hoàng Shank "tóc đỏ". Luffy lãnh đạo nhóm hải tặc Mũ Rơm qua East Blue (Biển Đông) và rồi tiến đến Grand Line. Cậu theo dấu chân của vị vua hải tặc quá cố Gol. D. Roger, chu du từ đảo này sang đảo khác để đến với kho báu vĩ đại.', N'onpice-tap-1.jpg', 1)
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaBoTruyen]) VALUES (3, N'One Piece - Tập 2: Versus!! Binh đoàn hải tặc Buggy', N'Eiichiro Oda', 19500, 10, N'One Piece (Vua Hải Tặc) bộ truyện thuộc thể loại truyện tranh hành động kể về một cậu bé tên Monkey D. Luffy, giong buồm ra khơi trên chuyến hành trình tìm kho báu huyền thoại One Piece và trở thành Vua hải tặc. Để làm được điều này, cậu phải đến được tận cùng của vùng biển nguy hiểm và chết chóc nhất thế giới: Grand Line (Đại Hải Trình). Luffy đội trên đầu chiếc mũ rơm như một nhân chứng lịch sử vì chiếc mũ rơm đó đã từng thuộc về hải tặc hùng mạnh: Hải tặc vương Gol. D. Roger và tứ hoàng Shank "tóc đỏ". Luffy lãnh đạo nhóm hải tặc Mũ Rơm qua East Blue (Biển Đông) và rồi tiến đến Grand Line. Cậu theo dấu chân của vị vua hải tặc quá cố Gol. D. Roger, chu du từ đảo này sang đảo khác để đến với kho báu vĩ đại.', N'one piece tap2.jpg', 1)
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaBoTruyen]) VALUES (4, N'CONAN - Tập 1 : Sherlock Holmes Nhật Bản', N'Gosho Aoyama', 17500, 9, N'Thám Tử Lừng Danh Conan là một bộ truyện tranh trinh thám Nhật Bản của tác giả Gosho Aoyama

Nhân vật chính của truyện là một thám tử học sinh trung học có tên là Kudo Shinichi - thám tử học đường xuất sắc - một lần bị bọn tội phạm ép uống thuốc độc và bị teo nhỏ thành học sinh tiểu học lấy tên là Conan Edogawa và luôn cố gắng truy tìm tung tích tổ chức Áo Đen nhằm lấy lại hình dáng cũ. 

Kudo Shinichi là một cậu thám tử học sinh năng nổ với biệt tài suy luận có thể sánh ngang với Sherlock Holmes! 

Một ngày nọ, khi mải đuổi theo những kẻ khả nghi, cậu đã bị chúng cho uống một loại thuốc kì lạ khiến cho cơ thể bị teo nhỏ. Vậy là một thám tử tý hon xuất hiện với cái tên giả Edogawa Conan!', N'conan_tap1.jpg', 2)
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaBoTruyen]) VALUES (5, N'CONAN - Tập 2: Những vụ án đầu tiên của Conan ', N'Gosho Aoyama', 17500, 10, N'Thám Tử Lừng Danh Conan là một bộ truyện tranh trinh thám Nhật Bản của tác giả Gosho Aoyama

Nhân vật chính của truyện là một thám tử học sinh trung học có tên là Kudo Shinichi - thám tử học đường xuất sắc - một lần bị bọn tội phạm ép uống thuốc độc và bị teo nhỏ thành học sinh tiểu học lấy tên là Conan Edogawa và luôn cố gắng truy tìm tung tích tổ chức Áo Đen nhằm lấy lại hình dáng cũ. 

Kudo Shinichi là một cậu thám tử học sinh năng nổ với biệt tài suy luận có thể sánh ngang với Sherlock Holmes! 

Một ngày nọ, khi mải đuổi theo những kẻ khả nghi, cậu đã bị chúng cho uống một loại thuốc kì lạ khiến cho cơ thể bị teo nhỏ. Vậy là một thám tử tý hon xuất hiện với cái tên giả Edogawa Conan!', N'conan-tap2.jpg', 2)
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaBoTruyen]) VALUES (6, N'DRAGON BALL - HỒI TUỔI THƠ - TẬP 1', N'Toriyama Akira', 20000, 9, N'Đây là Dragon Ball truyện màu tập 1, kể về những cuộc phiêu lưu đầu tiên của Son Goku khi cậu gặp gỡ Bulma, từ đó kết bạn với Oolong, chiến đấu với Yamcha và làm quen vợ tương lai Chichi.

Ở những phần đầu tiên của bộ Dragon Ball huyền thoại này, ta sẽ thấy rất rõ sức ảnh hưởng của Tây Du Ký lên bộ truyện, từ nhân vật đến những câu chuyện xảy ra, với Bulma là Đường tăng, Son Goku là Tôn ngộ không, Oolong là Trư Bát giới..

Truyện cũng được bổ sung thêm rất nhiều chú thích để bạn hiểu rõ hơn về văn hóa của Nhật và Trung Quốc, những ẩn ý chơi chữ của tác giả, những chi tiết thú vị mà nếu bạn đọc thoáng qua sẽ không để ý', N'db_tap1.jpg', 4)
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaBoTruyen]) VALUES (7, N'DRAGON BALL - HỒI TUỔI THƠ - TẬP 2', N'Toriyama Akira', 20000, 27, N'Trong tập này, Son Goku, Bulma, Oolong, Yamcha đã hầu như tìm được ngọc rồng nhưng cuối cùng lại bị một nhân vật mới tự xưng là Đại Đế Pilaf cướp mất. Sau khi tập hợp được 7 viên ngọc rồng và thần long đã xuất hiện, Pilaf chuẩn bị thực hiện điều ước đầy tham vọng của mình là làm bá chủ thế giới. Liệu những người bạn của chúng ta có kịp thời ngăn chặn hắn không?', N'db_tap2.jpg', 4)
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaBoTruyen]) VALUES (8, N'DRAGON BALL - HỒI TUỔI THƠ - TẬP 3', N'Toriyama Akira', 20000, 10, N'Trong tập này chúng ta sẽ cùng theo dõi quá trình huấn luyện gian khổ của Kuririn và Goku. Tiếp theo họ sẽ tham gia vào Đại hội thiên hạ đệ nhất võ sĩ, tranh tài cùng các anh hào và chủng loài khắp thế giới', N'db_tap3.jpg', 4)
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaBoTruyen]) VALUES (9, N'Naruto Tập 1 - Ta Đây! Uzumaki Naruto', N'Kishimoto Masashi', 20500, 1, N'Naruto-Bộ truyện tranh vô cùng nổi tiếng của Nhật Bản được rất nhiều bạn trẻ yêu thích. Câu chuyện kể về cậu bé bị phong ấn Naruto ồn áo, hiếu động và luôn muốn được công nhận một cách thực sự. Cậu đã thề rằng một ngày không xa, cậu sẽ trở thành Hokage vĩ đại nhất trong lịch sử ngôi làng. Mười hai năm trước , một con  Cửu Vĩ Hồ Ly đã tấn công 1 ngôi làng nhỏ bé và cướp đi sinh mạng của bao nhiêu người dân trong làng. Người đứng đầu ngôi làng, Hokage đệ Tứ, đã hi sinh khi cố phong ấn con yêu hồ vào trong cơ thể của một đứa bé vừa mới chào đời- Uzumaki Naruto.', N'na_tap1.jpg', 5)
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaBoTruyen]) VALUES (10, N'Naruto Tập 2 - Konohamaru Chính Là Ta Đây!', N'Kishimoto Masashi', 20500, 11, N'Naruto-Bộ truyện tranh vô cùng nổi tiếng của Nhật Bản được rất nhiều bạn trẻ yêu thích. Câu chuyện kể về cậu bé bị phong ấn Naruto ồn áo, hiếu động và luôn muốn được công nhận một cách thực sự. Cậu đã thề rằng một ngày không xa, cậu sẽ trở thành Hokage vĩ đại nhất trong lịch sử ngôi làng. Mười hai năm trước , một con  Cửu Vĩ Hồ Ly đã tấn công 1 ngôi làng nhỏ bé và cướp đi sinh mạng của bao nhiêu người dân trong làng. Người đứng đầu ngôi làng, Hokage đệ Tứ, đã hi sinh khi cố phong ấn con yêu hồ vào trong cơ thể của một đứa bé vừa mới chào đời- Uzumaki Naruto.', N'na_tap2.jpg', 5)
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaBoTruyen]) VALUES (11, N'DORAEMON TRUYỆN DÀI - TẬP 2 - NOBITA VÀ LỊCH SỬ KHAI PHÁ VŨ TRỤ', N'Fujiko F Fujio', 19500, 10, N'“Nobita và lịch sử khai phá vũ trụ” là tác phẩm thứ 2 trong xêri Doraemon truyện dài, và cũng đã được chuyển thể thành phim hoạt hình.
Ở trên trái đất, Nobita hậu đậu làm việc gì cũng thất bại, nhưng khi đến hành tinh Koyakoya nơi lực hút rất yếu thì cậu bỗng trở nên mạnh mẽ phi thường. Bằng sức mạnh ấy, Nobita đã chiến đấu với bọn người xấu để bảo vệ hòa bình cho hành tinh này.
Tập truyện sẽ đưa chúng ta bước vào vũ trụ bao la rộng lớn, và chắc chắn các em sẽ vô cùng cảm động trước những hành động dũng cảm của Nobita, Doraemon cùng các bạn!', N'doraemon2.jpg', 3)
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaBoTruyen]) VALUES (12, N'DORAEMON TRUYỆN DÀI - TẬP 3-  NOBITA THÁM HIỂM VÙNG ĐẤT MƠI', N'Fujiko F Fujio', 19500, 10, N'Nobita tình cờ gặp một chú chó kì lạ và đặt tên cho nó là Bụng Rỗng (Peko). Chú chó này đã tìm ra một bức ảnh vệ tinh về một vùng đất bí ẩn ở châu Phi. Cả nhóm Doraemon quyết định lên đường khám phá vùng đất ấy. Không may, Cánh cửa thần kì ở sân bóng bị đốt cháy, cả nhóm không trở về được. Cả bọn phải cố gắng vượt qua sông Aguagu, Thác Temu, vực Odoron. Lúc này, Bụng Rỗng mới nhận mình là hoàng tử Kuntaku (Khinthắt) của Vương quốc Bovan toàn là chó, đã thoát chết trong cuộc đảo chính của quân phản loạn Dabranda. Nhờ may mắn, họ đã được bác Burs, Chipo (Xítpôn) kể lại tình hình chiến sự của bọn lính tay sai của tên Dabranda. Họ cùng nhau chiến đấu với bè lũ tay sai của Dabranda. Với sự giúp đỡ của nhóm Doraemon đến từ tương lai, họ đến lay động trái tim vị thần khổng lồ và pho tượng ấy đã giúp cả nhóm và Kuntaku phá tan bè lũ Dabranda. Đất nước Bovan được hòa bình, cả nhóm Doraemon trở về nhà bằng Cánh cửa thần kì của nhóm Doraemon đến từ tương lai và quay trở về quá khứ để ứng nghiệm lời tiên tri của hoàng tộc Kuntaku.', N'doraemon3.jpg', 3)
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaBoTruyen]) VALUES (13, N'DORAEMON TRUYỆN DÀI - TẬP 4 - NOBITA VÀ LÂU ĐÀI DƯỚI ĐÁY BIỂN', N'Fujiko F Fujio', 19500, 10, N'Các bạn đang cầm trên tay nguyên tác của bộ phim hoạt hình “Nobita và lâu đài dưới đáy biển” được công chiếu vào năm 1984. Đây là tác phẩm thứ 4 trong xêri Doraemon truyện dài, và cũng là câu chuyện lấy bối cảnh về đại dương đầu tiên của tôi.
Dưới đáy đại dương sâu thẳm, nhóm bạn Nobita phải đương đầu với mối nguy hiểm đe dọa toàn thể sinh vật trên trái đất. Các em hãy cùng tham gia vào chuyến phiêu lưu li kì ở vùng biển huyền bí này để được sống trong những giây phút hồi hộp và hùng tráng nhé!', N'doraemon4.jpg', 3)
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaBoTruyen]) VALUES (14, N'DORAEMON TRUYỆN DÀI - TẬP 5 - NOBITA VÀ CHUYẾN PHIÊU LƯU VÀO XỨ QUỶ', N'Fujiko F Fujio', 19500, 10, N'Tập truyện “Nobita và chuyến phiêu lưu vào xứ quỷ” là nguyên tác của bộ phim hoạt hình cùng tên. Câu chuyện lấy bối cảnh là một thế giới phép thuật do Nobita tạo ra, thế giới này tồn tại song song với thế giới hiện thực. Tại đây, nhóm bạn Doraemon, Nobita đã chiến đấu anh dũng để cứu trái đất khỏi mối nguy hiểm cận kề. Chúng ta hãy bước vào thế giới phép thuật kì lạ này và phiêu lưu cùng nhóm bạn Doraemon nhé!', N'doraemon5.jpg', 3)
SET IDENTITY_INSERT [dbo].[Truyen] OFF
/****** Object:  ForeignKey [fk_MaBoTruyen]    Script Date: 01/10/2022 05:39:58 ******/
ALTER TABLE [dbo].[Truyen]  WITH CHECK ADD  CONSTRAINT [fk_MaBoTruyen] FOREIGN KEY([MaBoTruyen])
REFERENCES [dbo].[BoTruyen] ([MaBoTruyen])
GO
ALTER TABLE [dbo].[Truyen] CHECK CONSTRAINT [fk_MaBoTruyen]
GO
