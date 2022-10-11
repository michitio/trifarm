-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 20, 2022 lúc 09:47 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_trifarm`
--
CREATE DATABASE IF NOT EXISTS `db_trifarm` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `db_trifarm`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_danhmuc`
--

DROP TABLE IF EXISTS `tb_danhmuc`;
CREATE TABLE `tb_danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_danhmuc`
--

INSERT INTO `tb_danhmuc` (`id`, `name`) VALUES
(3, 'Trứng'),
(5, 'Bơ sữa'),
(4, 'Gạo'),
(7, 'Trái cây khô, mứt'),
(6, 'Cà phê, trà'),
(2, 'Rau củ'),
(1, 'Trái cây');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_sanpham`
--

DROP TABLE IF EXISTS `tb_sanpham`;
CREATE TABLE `tb_sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `id_dm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_sanpham`
--

INSERT INTO `tb_sanpham` (`id`, `name`, `desc`, `img`, `price`, `id_dm`) VALUES
(1, 'Xoài cát xoài lộc', 'Xoài cát Hòa Lộc  là loại xoài đặc sản nổi tiếng của vùng đồng bằng sông Cửu Long, một trong những loại trái cây chủ lực của Tiền Giang.[1] Xoài cát Hòa Lộc là loại trái cây đặc sản của tỉnh Tiền Giang, và là sản phẩm trái cây đầu tiên của vùng đồng bằng sông Cửu Long được cấp bảo hộ chỉ dẫn địa lý.', 'https://cdn.tgdd.vn/Products/Images/8788/222842/bhx/xoai-cat-hoa-loc-tui-1kg-1-2-trai-202205141648035458.jpg', 18000, 1),
(2, 'Thanh long ruột đỏ', 'Thanh long ruột đỏ được lòng rất nhiều người bởi màu sắc bắt mắt, vị ngọt đậm đà. Hàm lượng dinh dưỡng của thanh long loại ruột đỏ nhiều gấp đôi thanh long loại ruột trắng. Thanh long ruột đỏ có vị ngọt, mọng nước, lớp thịt trắng gần vỏ chua nhẹ không đáng kể.', 'https://redpineinternational.vn/wp-connamet/uploads/2021/08/thanh-long-ruot-do-01.jpg                ', 25000, 1),
(3, 'Nho xanh Phan Rang', 'Không chỉ có hương vị thơm ngon mà Nho xanh Phan Rang còn là một loại trái cây bổ dưỡng. Thường xuyên ăn nho xanh có tác dụng tăng cường sức đề kháng, chống lão hóa, hỗ trợ tim mạch, có tác dụng đào thải độc tố... hiệu quả nên rất thích hợp bồi bổ người ốm yếu hay những ai muốn giữ vóc dáng và làn da.', 'https://product.hstatic.net/1000211685/product/upload_09a775b9dc654c65afeaa3fcf20a5779.jpg', 130000, 1),
(4, 'Dưa gang', 'Dưa gang hay còn có tên gọi khác là dưa bở do Organic phân phối, được lựa chọn từ những trái dưa chất lượng tại các trang trại sạch, đảm bảo vệ sinh an toàn thực phẩm. Loại dưa này cho thịt quả mềm xốp, dễ gọt vỏ, thái miếng hay xay sinh tố. Để giải nhiệt mùa hè, bạn có thể dùng loại quả này để dầm đường, làm kem hay xay sinh tố đều có tác dụng rất hữu hiệu', 'https://product.hstatic.net/1000211685/product/upload_77ef96b45848432caca7f6c68a8110c9.jpg', 90000, 1),
(5, 'Măng cụt', 'Măng cụt với hương vị chua chua ngọt ngọt, thanh mát đầy lôi cuốn và kích thích là loại trái cây không thể bỏ qua trong mùa hè này. Không chỉ mang đến nhiều công dụng cho sức khoẻ mà còn là \"thần dược\" cho nhan sắc của phụ nữ. Măng cụt thích hợp để ăn trực tiếp, giải khát cho ngày nóng nực', 'https://cdn.tgdd.vn/Products/Images/8788/239401/bhx/mang-cut-tui-1kg-8-10-trai-202207042041380519.jpg     ', 100000, 1),
(6, 'Chuối', 'Loại chuối được nhiều khách hàng ưa chuộng. Chuối chứa nhiều chất dinh dưỡng như kali, chất xơ, vitamin,... nên chuối có tác dụng tốt cho sức khoẻ như hỗ trợ giảm cân, hỗ trợ sức khoẻ tim mạch, cải thiện sức khoẻ của thận,...Cam kết đúng khối lượng, bao bì kín đáo, an toàn và bảo đảm hợp vệ sinh.', 'https://cdn.tgdd.vn/Products/Images/8788/272140/bhx/chuoi-gia-giong-nam-my-hop-1kg-6-7-trai-202209121642568468.jpg       ', 25000, 1),
(7, 'Trứng gà ', 'Hộp 6 trứng gà tươi, chất lượng, trứng to. Trứng được đóng trong hộp nhựa trong giúp bảo quản và vận chuyển trứng không bị móp, bể, hư.', 'https://cdn.tgdd.vn/Products/Images/8783/226998/bhx/hop-6-trung-ga-ta-tfood-6-trung-202112271033524364.jpg       ', 18000, 3),
(8, 'Trứng cút', 'Trứng cút tròn, đều.Trứng cút thì bạn có thể luộc chín chế biến thành một số món ăn như: trứng cút hun khói, xíu mại trứng cút,..', 'https://cdn.tgdd.vn/Products/Images/8783/219097/bhx/hop-30-trung-cut-tuoi-tfood-30-trung-202112271006004018.jpg', 27000, 3),
(9, 'Trứng vịt', 'Trứng vịt 4K.Farm được sản xuất ở trang trại sạch, chất lượng, nên khách hàng có thể yên tâm về sản phẩm. Hộp 10 trứng vịt 4K.Farm hộp trứng to, sạch, đảm bảo tốt cho sức khoẻ cả nhà. Trứng có kích thước khoảng 60-70g/trái.', 'https://cdn.tgdd.vn/Products/Images/8783/234812/bhx/hop-10-trung-vit-xanh-4kfarm-202208201622074650.jpg', 30000, 3),
(10, 'Trứng ngỗng', 'Trứng ngỗng lành tính. Do đó, trứng ngỗng rất tốt đối với  sức khỏe con người đặc biệt với các bà bầu , mẹ bầu có thể ăn vào bất kỳ thời gian nào trong thai kỳ. Không cần phải băn khoăn về tác động của chúng đối với sức khỏe của mẹ hay sự phát triển của bé.', 'http://giahungstore.com/wp-connamet/uploads/2018/04/trung-ngong-ngon-thai-binh.jpg', 30000, 3),
(11, 'Trứng muối', 'Hộp 4 trứng vịt muối được đóng gói và bảo quản theo những tiêu chuẩn nghiêm ngặt về vệ sinh và an toàn thực phẩm, đảm bảo về chất lượng của thực phẩm, xuất xứ rõ ràng. Trứng vịt to tròn, đều. Đây là sản phẩm cỏ thể ăn liền, có thể ăn với cơm hoặc ăn không,...', 'https://cdn.tgdd.vn/Products/Images/8783/222975/bhx/hop-4-trung-vit-muoi-tfood-4-trung-202112271027398426.jpg', 35000, 3),
(12, 'Xà lách xoong Đà Lạt', 'Rau xà lách xoong Đà Lạt có hương vị tươi mát, ngon ngọt được nhiều người tiêu dùng ưa chuộng. Trong xà lách xoong có chứa hàm lượng chất xơ cao, dinh dưỡng giúp tăng cường sức khỏe, khả năng chống oxi hóa tốt cũng như hỗ trợ chị em trong chăm sóc sắc đẹp', 'https://cdn.tgdd.vn/Products/Images/8820/271509/bhx/xa-lach-xoong-da-lat-bo-500g-202205181608274117.jpg        ', 20000, 2),
(13, 'Rau muống Organic', 'Giá trị dinh dưỡng của Rau muống đối với sức khoẻ: Trong nhiều bữa cơm gia đình của người Việt, thường xuất hiện các món chế biến từ rau muống như: rau muống luộc, rau muống xào, rau muống làm gỏi, nấu cháo thịt rau muống. Rau muống chứa vitamin C, E, chất béo, khoáng chất như sắt, kẽm, magie.', 'https://product.hstatic.net/1000126467/product/05479276_93c5d547e9244acaa8eef1a38b426014_a4905b67a33b431a8928b58ce2b75325_master.jpg', 20000, 2),
(14, 'Cải xanh', 'Cải bẹ xanh baby được trồng bằng kỹ thuật canh tác chuyên biệt, có thời gian thu hoạch ngắn hơn 1 nửa so với thông thường, là rau non nên có độ giòn, ngọt hơn rất nhiều. Giữ được nguyên vẹn các giá trị dinh dưỡng.', 'https://cdn.tgdd.vn/Products/Images/8820/223329/bhx/cai-be-xanh-baby-goi-300g-202205181634539404.jpg', 12000, 2),
(15, 'Cà rốt', 'Cà rốt Đà Lạt là một loại củ rất quen thuộc trong các món ăn của người Việt. Cà rốt có hàm lượng chất dinh dưỡng và vitamin A cao, được xem là nguyên liệu cần thiết cho các món ăn dặm của trẻ nhỏ, giúp trẻ sáng mắt và cung cấp nguồn chất xơ dồi dào', 'https://cdn.tgdd.vn/Products/Images/8785/271572/bhx/ca-rot-da-lat-tui-500g-2-5-cu-202205201603295625.jpg', 20000, 2),
(16, 'Củ cải trắng', 'Củ cải trắng trồng ở Đà Lạt là một loại rau củ vừa có thể dùng để làm thực phẩm, vừa có thể sử dụng để làm dầu hạt cải. Củ cải trắng chứa rất nhiều vitamin và khoáng chất, tốt cho cơ thể.', 'https://cdn.tgdd.vn/Products/Images/8785/271469/bhx/cu-cai-trang-tui-500g-2-5-cu-202205201700108859.jpg', 15000, 2),
(17, 'Trà xanh ', 'Từ  những  cây trà có tuổi đời hàng trăm năm do nhiều thế hệ từ xa xưa để lại hoàn toàn tự nhiên hầu như không có sự can thiệp của con người.Trà xanh có màu nước xanh óng ánh ánh vàng, phảng phất hương thơm của núi rừng Tây Bắc, vị thanh, ngọt hậu giữ lâu trong cổ họng.', 'https://cdn.tgdd.vn/Products/Images/2385/224780/bhx/tra-xanh-huu-co-vherbs-shan-tuyet-co-thu-49g-202007230825591357.jpg', 56000, 6),
(18, 'Cà phê nguyên hạt rang mộc The JUN Passion', 'Từ những hạt cà phê ngon nhất tại vùng đất đỏ bazan kết hợp với công thức rang xay mộc độc quyền, có thể vừa pha phin, vừa pha máy. Ngụm đầu của ly cà phê The JUN Passion có thể đọng lại vị đắng đậm cùng một chút chua thanh đặc trưng của cà phê nguyên chất trên đầu lưỡi', 'https://cdn.tgdd.vn/Products/Images/2883/207792/bhx/ca-phe-rang-xay-moc-the-jun-passion-345g-202001080955013927.jpg', 180000, 6),
(19, 'Cà phê rang xay mộc The JUN Challenge', 'Sản phẩm là sự hòa quyện giữa vị của các hạt cà phê cùng với công thức ủ độc quyền từ các chuyên gia của The JUN chính là điểm đặc biệt và khác biệt của cà phê The JUN đối với các sản phẩm cà phê khác.', 'https://cdn.tgdd.vn/Products/Images/2883/207793/bhx/ca-phe-rang-xay-moc-the-jun-challenge-345g-202001080954054227.jpg', 180000, 6),
(20, 'Bột trà xanh Matcha Natsu', 'Bột trà xanh Matcha được nhập khẩu 100% từ Nhật Bản, sản phẩm là tự nhiên và nguyên chất, không chứa bất kì hóa chất hay hương liệu nào khác', 'https://matchashop.vn/upload/images/bot-tra-xanh-matcha-natsu-1kg.jpg', 1100000, 6),
(21, 'Trái Cây Khô Hỗn Hợp 200gr', 'Trái cây khô hỗn hợp là nguyên liệu làm bánh được sử dụng rộng rãi trong các món bánh, có mùi vị thơm ngon và giàu chất dinh dưỡng, đảm bảo vệ sinh an toàn thực phẩm.', 'https://dungculambanh.com.vn/wp-connamet/uploads/2015/08/trai-cay-kho-200ge.jpg', 65000, 7),
(22, 'Mít sấy', ' Mít rất giàu các vitamin nhóm B (B1, B2, B6), vitamin C rất tốt cho hệ tiêu hóa và phụ nữ mang thai.\r\nMít chứa rất ít lượng chất béo bão hòa, cholesterol và natri giúp tăng cường hệ thống miễn dịch, tốt cho tim mạch.\r\nĐường thiên nhiên (fructose và sucrose) trong mít giúp bổ sung năng lượng cho cơ thể.', 'https://cf.shopee.vn/file/d0d64a992f088d97a8ce8deebad9185b', 70000, 7),
(23, 'Sầu Riêng Sấy Giòn \r\n', 'Sầu riêng sấy hương vị thơm ngon, bổ dưỡng, nguyên chất có vị ngọt nhẹ rất đặc trưng, béo vừa chứ không ngậy pha lẫn vào nhau tuyệt vời đến độ khó diễn tả khiến nhiều người thích đến phát nghiện, hoàn toàn không sử dụng hóa chất và phụ gia thực phẩm. Sầu riêng sấy được đóng gói tiện dụng, thuận lợi mang theo mỗi khi đi xa hay dành làm quà tặng vì nó rất lạ, ngon, mang hương vị thuần Việt\r\n\r\n', 'http://traicayhatsay.com/upload/images/sau-rieng-say-dat-biet-200g-cua-hang-trai-cay-hat-say.jpg', 220000, 7),
(24, 'Mứt dâu', 'Loại trái cây này ích lợi cho sức khoẻ vì dồi dào chất chống ôxy hoá (giúp giữ ổn định hệ thống tim mạch), chất chống viêm (ngừa ung thư hữu hiệu), giàu vitamin C (giúp tăng sức đề kháng), magiê (giúp giữ gìn sức khoẻ xương, răng), kali (bảo vệ cơ bắp, hệ thần kinh, giảm nguy cơ huyết áp cao)', 'https://dacsandalat.com.vn/wp-connamet/uploads/2014/06/mut-dau-tay-dalavi-1.jpg', 80000, 7),
(25, 'Khoai lang vàng sấy dẻo', 'Có rất nhiều loại rau củ có thể được chế biến thành dạng chip và ăn cũng giòn như bí đỏ, cà rốt, củ cải đường, củ cải đỏ…nhưng thậm chí còn thơm ngon và giàu dinh dưỡng hơn. Một trong số đó không thể không nhắc tới khoai lang sấy giòn rất thơm ngon và hấp dẫn lắm đấy nhé, đảm bảo cả gia đình bạn sẽ thích thú cho mà xem.', 'https://dacsandalat.com.vn/wp-connamet/uploads/2014/07/DSC_0090.jpg', 70000, 7),
(26, 'Sữa thanh trùng', 'Được chế biến từ sữa bò tươi nguyên chất từ cao nguyên Lâm Đồng – nơi có nguồn nguyên liệu sữa tươi chất lượng cao được vắt từ những giống bò sữa tốt nhất trong điều kiện khí hậu trung bình từ 15 – 25oC và độ cao trên 1000 m.', 'https://suadalat.com/wp-connamet/uploads/2021/09/STTT-CD-180ml-1.jpg', 12000, 5),
(27, 'Sữa chua lên men đào', 'Với thành phần chủ yếu từ sữa bò tươi nguyên chất Dalatmilk và nước cốt đào. Bổ sung vitamin C cho cơ thể, mang lại sự sảng khoái mà còn tăng cường sức đề kháng cho cơ thể của bạn với lợi khuẩn LH – BO2 (lợi khuẩn kích thích quá trình hấp thu chất dinh dưỡng cho cơ thể).', 'https://suadalat.com/wp-connamet/uploads/2021/09/sua-chua-len-men-dao-180ml-dalat-milk-1.jpg', 10000, 5),
(28, 'Phô mai Bottega Zelachi Gouda', 'Là sản phẩm phô mai có xuất xứ từ Hà Lan, được làm từ thành phần tự nhiên đến từ thương hiệu phô mai Bottega Zelachi. Phô mai Bottega Zelachi Gouda gói 100g có vị ngọt mặn, có thể dùng trực tiếp với trái cây, bánh mì, bánh crackers, kẹp với sandwich, có thể dùng để làm sốt hoặc súp.', 'https://cdn.tgdd.vn/Products/Images/7599/248425/bhx/pho-mai-bottega-zelachi-gouda-goi-100g-202110141155160208.jpg\r\n', 50000, 5),
(29, 'Phô mai lát Anchor Cheddar', 'Sản phẩm phô mai của thương hiệu Anchor có hương vị thơm ngon, lưu giữ được hương vị tinh túy từ sữa, an toàn cho sức khoẻ của người dùng. Sản phẩm Phô mai lát Anchor Cheddar gói 200g có vị béo, mặn được làm từ 100% nguyên liệu sạch từ Ba Lan, có thể dùng để chế biến nhiều món ăn.', 'https://cdn.tgdd.vn/Products/Images/7599/259929/bhx/pho-mai-lat-anchor-cheddar-goi-200g-12-lat-202111161109032220.jpg', 75000, 5),
(30, 'Gạo thơm A An ST21 ', 'Gạo thơm A An ST21 túi 5kg được thu hoạch từ giống lúa ST21 tự nhiên. Gạo A An được sản xuất trên dây chuyền hiện đại, cam kết không đấu trộn, không chất tạo mùi, mang lại sản phẩm gạo chất lượng, an toàn cho sức khoẻ người dùng', 'https://cdn.tgdd.vn/Products/Images/2513/223652/bhx/gao-thom-a-an-st21-tui-5kg-202006061602569575.jpg', 160000, 4),
(31, 'Gạo lứt đỏ Vinh Hiển', 'Giống gạo được tuyển chọn từ vùng trồng gạo nổi tiếng kết hợp với công nghệ sản xuất đạt chuẩn HACCP. Gạo lứt đỏ Vinh Hiển túi 1kg thích hợp cho những người muốn ăn kiêng, giảm cân. Gạo Vinh Hiển chất lượng, an toàn, sạch và không chứa chất kích thích tăng trưởng.', 'https://cdn.tgdd.vn/Products/Images/2513/229221/bhx/gao-lut-do-vinh-hien-tui-1kg-202010171224597621.jpg', 35000, 4),
(32, 'Nếp cái hoa vàng Vinh Hiển', 'Gạo có đặc tính cơm mềm dẻo, thơm ngon. Được canh tác từ nếp cái hoa vàng Bắc, mang đến chất lượng cao. Nếp cái hoa vàng Vinh Hiển túi 1kg dinh dưỡng, an toàn và dẻo. Gạo Vinh Hiển chất lượng, an toàn, sạch và không chứa chất kích thích tăng trưởng.', 'https://cdn.tgdd.vn/Products/Images/2513/227004/bhx/nep-cai-hoa-vang-vinh-hien-tui-1kg-202008150913276084.jpg', 36000, 4),
(33, 'Gạo thơm Neptune ST24', 'Gạo khi nấu cho cơm mềm, dẻo nhiều, ngon miệng tạo cảm giác dễ chịu cho người ăn. Gạo thơm Neptune ST24 túi 5kg là giống lúa ST24 cao cấp của hãng Neptune, được nuôi trồng canh tác theo các quy trình nghiêm ngặt, đảm bảo chất lượng và an toàn đến tay người dùng.', 'https://cdn.tgdd.vn/Products/Images/2513/224495/bhx/gao-thom-neptune-st24-tui-5kg-202006250849282085.jpg', 159000, 4),
(34, 'Gạo Lạc Việt XK51', 'Gạo Lạc Việt là hãng gạo uy tính, nổi tiếng tại thị trường gạo của Việt Nam, được rất nhiều khách hàng tin dùng chọn lựa bởi hương vị thơm ngon, dẻo mềm khó cưỡng. Gạo Lạc Việt XK51 túi 5kg với túi xách tiện dụng, hạt gạo trắng đều cho cơm dẻo, mềm thơm lừng bắt vị cho bữa ăn ngon.', 'https://cdn.tgdd.vn/Products/Images/2513/279509/bhx/gao-lac-viet-xk51-tui-5kg-202205211712336834.jpg', 120000, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tb_danhmuc`
--
ALTER TABLE `tb_danhmuc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `tb_sanpham`
--
ALTER TABLE `tb_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tb_danhmuc`
--
ALTER TABLE `tb_danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tb_sanpham`
--
ALTER TABLE `tb_sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
