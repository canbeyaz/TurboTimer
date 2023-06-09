USE [TurboTimerDB]
GO
/****** Object:  User [turbotimeruser]    Script Date: 14.5.2023 02:09:25 ******/
CREATE USER [turbotimeruser] FOR LOGIN [turbotimeruser] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [turbotimeruser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [turbotimeruser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [turbotimeruser]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [turbotimeruser]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [turbotimeruser]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 14.5.2023 02:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Isim] [nvarchar](20) NULL,
 CONSTRAINT [pk_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Makaleler]    Script Date: 14.5.2023 02:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Makaleler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kategori_ID] [int] NULL,
	[Yazar_ID] [int] NULL,
	[Baslik] [nvarchar](200) NULL,
	[Ozet] [nvarchar](1000) NULL,
	[Icerik] [ntext] NULL,
	[KapakResim] [nvarchar](50) NULL,
	[GoruntulemeSayi] [int] NULL,
	[BegeniSayi] [int] NULL,
	[EklemeTarihi] [date] NULL,
	[YayinDurumu] [bit] NULL,
	[Silinmis] [bit] NULL,
 CONSTRAINT [pk_Makaleler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Uyeler]    Script Date: 14.5.2023 02:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uyeler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Isim] [nvarchar](50) NULL,
	[Soyisim] [nvarchar](50) NULL,
	[KullaniciAdi] [nvarchar](20) NULL,
	[Mail] [nvarchar](120) NULL,
	[Sifre] [nvarchar](12) NULL,
	[UyelikTarihi] [date] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [pk_Uyeler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Yoneticiler]    Script Date: 14.5.2023 02:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yoneticiler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[YoneticiTur_ID] [int] NULL,
	[Isim] [nvarchar](50) NULL,
	[Soyisim] [nvarchar](50) NULL,
	[KullaniciAdi] [nvarchar](20) NULL,
	[Mail] [nvarchar](120) NULL,
	[Sifre] [nvarchar](12) NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [pk_Yoneticiler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YoneticiTurleri]    Script Date: 14.5.2023 02:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YoneticiTurleri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Isim] [nvarchar](20) NULL,
 CONSTRAINT [pk_YoneticiTurleri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Yorumlar]    Script Date: 14.5.2023 02:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorumlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Uye_ID] [int] NULL,
	[Makale_ID] [int] NULL,
	[Icerik] [nvarchar](500) NULL,
	[EklemeTarihi] [datetime] NULL,
	[BegeniSayi] [int] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [pk_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([ID], [Isim]) VALUES (1, N'LPG Rehberi')
INSERT [dbo].[Kategoriler] ([ID], [Isim]) VALUES (3, N'Arıza Rehberi')
INSERT [dbo].[Kategoriler] ([ID], [Isim]) VALUES (6, N'Araba Yorumları')
INSERT [dbo].[Kategoriler] ([ID], [Isim]) VALUES (9, N'Lastik Rehberi')
INSERT [dbo].[Kategoriler] ([ID], [Isim]) VALUES (10, N'Bilgi')
INSERT [dbo].[Kategoriler] ([ID], [Isim]) VALUES (11, N'Fiyatlar')
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
SET IDENTITY_INSERT [dbo].[Makaleler] ON 

INSERT [dbo].[Makaleler] ([ID], [Kategori_ID], [Yazar_ID], [Baslik], [Ozet], [Icerik], [KapakResim], [GoruntulemeSayi], [BegeniSayi], [EklemeTarihi], [YayinDurumu], [Silinmis]) VALUES (4, 1, 1, N'TOGG Ön Sipariş Başladı TOGG için Kredi Vericek Olan Bankalar ?', N'TOGG Türkiye''nin gurur kaynağı olan yerli otomobil markasıdır Hem fiyatı hem de özellikleri ile tüm dünyanın dikkatini çeken T10X modelinin ön siparişleri başladı ', N'<p>TOGG T&uuml;rkiye&#39;nin gurur kaynağı olan yerli otomobil markasıdır Hem fiyatı hem de &ouml;zellikleri ile t&uuml;m d&uuml;nyanın dikkatini &ccedil;eken T10X modelinin &ouml;n siparişleri başladı 27 Mart&#39;a kadar s&uuml;recek olan &ouml;n siparişlerde 60 bin TL nakit ile kura hakkı kazanma imkanı sunuluyor Bu &ouml;n sipariş s&uuml;reci b&uuml;y&uuml;k bir ilgi g&ouml;rd&uuml; ve vatandaşlar taksitle alım imkanını araştırmaya başladılar</p>

<p>&nbsp;</p>

<p><strong>TOGG İ&ccedil;in Hangi Bankalar Kredi Verecek</strong></p>

<p>TOGG&#39;un Bursa Gemlik&#39;teki &uuml;retim &uuml;ss&uuml;nde 29 Ekim&#39;de seri &uuml;retime başlaması ve fiyat belirleme s&uuml;recinin ardından kamu bankaları devreye girecek Hazine ve Maliye Bakanı Nureddin Nebati ge&ccedil;tiğimiz g&uuml;nlerde yaptığı a&ccedil;ıklamada kamu bankaları ile g&ouml;r&uuml;şmelerin ger&ccedil;ekleştirildiğini ve Ziraat Bankası Halkbank Vakıfbank ve katılım bankalarının gerekli teşvikleri vereceğini s&ouml;yledi Bu teşviklerle birlikte TOGG kredisi veren bankalar da faaliyete ge&ccedil;ecektir</p>

<p>TOGG&#39;un yerli otomobil &uuml;retiminde atılan bu &ouml;nemli adım T&uuml;rk otomotiv end&uuml;strisinin geleceği i&ccedil;in umut verici bir işaret olarak g&ouml;r&uuml;l&uuml;yor TOGG&#39;un finansmanı konusunda yapılan &ccedil;alışmalar T&uuml;rkiye&#39;nin otomotiv sekt&ouml;r&uuml;ndeki b&uuml;y&uuml;me potansiyelinin artmasına ve sekt&ouml;rdeki yerli &uuml;reticilerin desteklenmesine katkı sağlayacaktır</p>
', N'db86794b-3fa4-4e29-8f6a-0613b9144a81.jpg', 6, 0, CAST(N'2023-05-14' AS Date), 1, 0)
INSERT [dbo].[Makaleler] ([ID], [Kategori_ID], [Yazar_ID], [Baslik], [Ozet], [Icerik], [KapakResim], [GoruntulemeSayi], [BegeniSayi], [EklemeTarihi], [YayinDurumu], [Silinmis]) VALUES (5, 9, 1, N'Araba Lastik Ebatları Nedir Nasıl Bulunur ?', N'Araba lastik ebatları lastiklerin boyutunu ve ölçülerini ifade eden bir dizi numaradan oluşur Bu numaralar lastiklerin genişliği yüksekliği jant çapı yük kapasitesi ve hız derecesi gibi özelliklerini belirtir', N'<p>Araba lastik ebatları lastiklerin boyutunu ve &ouml;l&ccedil;&uuml;lerini ifade eden bir dizi numaradan oluşur Bu numaralar lastiklerin genişliği y&uuml;ksekliği jant &ccedil;apı y&uuml;k kapasitesi ve hız derecesi gibi &ouml;zelliklerini belirtir</p>

<p>Lastik ebatları doğru lastik se&ccedil;imi i&ccedil;in son derece &ouml;nemlidir &ccedil;&uuml;nk&uuml; yanlış ebat se&ccedil;imi aracın performansını g&uuml;venliğini ve yakıt t&uuml;ketimini olumsuz etkileyebilir lastik ebatları arasında doğru bir şekilde ge&ccedil;iş yapmak aracın s&uuml;r&uuml;ş &ouml;zelliklerini değiştirebilir</p>

<p>daha geniş bir lastik daha iyi yol tutuşu ve daha fazla &ccedil;ekiş sağlayabilir ancak daha fazla yakıt t&uuml;ketebilir Ayrıca yanlış bir lastik ebatı se&ccedil;imi lastiğin janta tam oturmamasına veya lastiklerin aşırı aşınmasına neden olabilir</p>

<p>doğru lastik ebatı se&ccedil;imi ara&ccedil; performansı ve g&uuml;venliği i&ccedil;in son derece &ouml;nemlidir S&uuml;r&uuml;c&uuml;lerin lastiklerinin ebatlarını ve &ouml;zelliklerini bilmeleri ve doğru lastikleri se&ccedil;meleri ara&ccedil;ları i&ccedil;in en iyi performansı ve g&uuml;venliği sağlayacaktır</p>
', N'95ca7ea9-dafa-40f2-b653-61d23a35894b.jpg', 1, 0, CAST(N'2023-05-14' AS Date), 1, 0)
INSERT [dbo].[Makaleler] ([ID], [Kategori_ID], [Yazar_ID], [Baslik], [Ozet], [Icerik], [KapakResim], [GoruntulemeSayi], [BegeniSayi], [EklemeTarihi], [YayinDurumu], [Silinmis]) VALUES (10, 3, 1, N'Eksantrik Mili (Kam Mili) Nedir, Nasıl Çalışır, Arızası Nasıl Anlaşılır?', N'Eksantrik mili, üzerinde bulunan sedler vasıtasıyla sübapları açar, distribütörü, yağ pompasını ve yakıt pompasını çalıştırır. ', N'<h2><strong>Eksantrik Mili (Kam Mili) Nedir, Nasıl &Ccedil;alışır,&nbsp;</strong></h2>

<p><strong>Eksantrik mili</strong>, &uuml;zerinde bulunan sedler vasıtasıyla s&uuml;bapları a&ccedil;ar, distrib&uuml;t&ouml;r&uuml;, yağ pompasını ve yakıt pompasını &ccedil;alıştırır. Yeni nesil 16 subap motorlarda 2 adet bulunur. &Ccedil;elik d&ouml;k&uuml;ml&uuml; olan eksantrik mili hareketini,&ouml;n ucundaki dişli vasıtasıyla krank mili dişlisinden alır. Eksantrik mili, Krank miline bağlanan triger kayışı ile hareket eder. Eksantrik milinin diğer bir adıda Kam Mili&rsquo;dir.</p>

<h3><strong>Eksantrik Mili Arıza Nasıl Oluşur?</strong></h3>

<ul>
	<li>Mildeki eğilme ve b&uuml;k&uuml;lme sonucu</li>
	<li>Eksantrik milindeki yatakalrda, yatak eksenlerinde ve kamlarda meydana gelen aşınmalar</li>
	<li>Yağ pompası dişlisinde meydana gelen aşınmalar</li>
	<li>Dişli zincirlerinde meydana gelen aşınmalar</li>
</ul>

<p>&nbsp;</p>

<h3><strong>Eksantrik Mili Arıza Belirtileri Nelerdir?</strong></h3>

<p><strong>Eksantrik mili arızaları</strong>ndan en sık yaşanan beliritlerinden biri aracın sesli &ccedil;alışması ve bu milden ses gelmesidir. Bu arıza ile birlikte ara&ccedil; &ccedil;aekişten d&uuml;şer, sesli &ccedil;alışır ve yakıt sarfiyatı artar. Sonrasında ise subap sesi pat pat şeklinde ses yapar ve pistonlara zarar verebilir. Triger kayışının kopması gibi bir durumda yaşanabilir. B&ouml;yle bir durumda ara&ccedil; hi&ccedil; &ccedil;alışmaz ve hareket etmez ve b&uuml;y&uuml;k maddi zararlara neden olabilir.</p>

<p>&nbsp;</p>

<p><strong>Eksantirik mili arızası</strong>&nbsp;ileri safhaları &ccedil;ok b&uuml;y&uuml;k maddi zararlara neden olacağından arıza oluşma aşamasında onarım tamirat işleminin yapılması gereklidir. Subaplardan gelen herhangi bir ses sonrası aracınızı işin ehli bir ustaya g&ouml;stermelisiniz. &Ouml;nem g&ouml;stermezseniz pistonlara ve silindir kapağına zarar verebilir, motor rektefiye işlemi yaptırmak durumunda kalabilirsiniz.</p>

<h3><strong>Eksantirik Mili Neden Kırılır?</strong></h3>

<p><strong>Eksantrik mili kırılması</strong>&nbsp;ani darbelerde, motorun piston kollarının kırılmalarında veya triger zincirinin kopması sonucu oluşabilir. &Ccedil;ok sık rastlanmaz ama b&ouml;yle bir durum yaşandığında motorun rektefiye işlemi g&ouml;rmesi gerekebilir.</p>

<h3><strong>Eksantirik Mili Neden Ses Yapar?</strong></h3>

<p>Eksantirik milinin en b&uuml;y&uuml;k arıza&nbsp;&nbsp;belirtilerinden biri motordan gelen seslerdir. Kullanıma bağlı olarak aşınan mil dişlileri g&ouml;revini tam olarak yerine getiremez ve ses yapmaya başlar. Motordan duyduğunuz alışık olmadığınız sesler arıza belirtisidir. Bu nedenle aracınızın arıza belirtilerine kulak verin ve &ouml;nemseyin.</p>

<p>&nbsp;</p>
', N'fd739f57-ad9f-4ace-9370-e91dc644af39.jpg', 0, 0, CAST(N'2023-05-14' AS Date), 1, 0)
INSERT [dbo].[Makaleler] ([ID], [Kategori_ID], [Yazar_ID], [Baslik], [Ozet], [Icerik], [KapakResim], [GoruntulemeSayi], [BegeniSayi], [EklemeTarihi], [YayinDurumu], [Silinmis]) VALUES (11, 3, 1, N'Motor Yağı Nasıl Kontrol Edilir? Motor Yağı Nasıl Değiştirilir?', N'Bugünkü yazımızda motor yağınızı nasıl kontrol edeceğinizi ve motor yağınızı nasıl değiştireceğiniz konusunda bilgiler vereceğim.', N'<h2><strong>Motor Yağı Nasıl Kontrol Edilir? Nasıl Değiştirilir?</strong></h2>

<p>Bug&uuml;nk&uuml; yazımızda motor yağınızı nasıl kontrol edeceğinizi ve motor yağınızı nasıl değiştireceğiniz konusunda bilgiler vereceğim. Bu gibi DIY yani do it yourself (kendin yap) aktivitelerini&nbsp;&nbsp;hi&ccedil;bir tecr&uuml;beniz yoksa &ouml;nermiyorum. Motor yağınızı kontrol edebilirsiniz ama motor yağınızı değiştirme işlemini tecr&uuml;be kazandıktan sonra yeterli ara&ccedil; gereciniz olduğunda değiştirmenizi tavsiye ederim. Şimdi gelelim adım adım motor yağı nasıl değiştirilir?</p>

<h3><strong>Adım Adım: Motor Yağı Değiştirme Talimatları</strong></h3>

<p><strong>1.</strong>&nbsp;İlk olarak aracın hasar g&ouml;rmesini &ouml;nlemek i&ccedil;in &uuml;reticinin tavsiye ettiği şekilde kaldırma noktalarını kullanarak aracı yerden kaldırmak i&ccedil;in ara&ccedil; taban krikosu kullanın.</p>

<p>&nbsp;</p>

<p>Bir jak kullanırken herhangi bir kaza olmaması i&ccedil;in dikkatli olun. Aracı her zaman jak tezgahları, rampalar veya beşik ile sabitleyin. Aracın d&ouml;nmesini &ouml;nlemek i&ccedil;in kaldırılan diğer uca tekerlek takozları takmanızı &ouml;neririz.</p>

<p>&nbsp;</p>

<p><strong>2.</strong>&nbsp;Eski yağı boşaltmak i&ccedil;in yağ karterinin altına bir kap yerleştirin.</p>

<p>Boşaltma tapasını &ccedil;ıkarın ve eski yağın kaba boşalmasını sağlayın.</p>

<p>Boşaltma tapasını temizleyin ve yeniden takın.</p>

<p>Boşaltma tapası contası hasarlı g&ouml;r&uuml;n&uuml;yorsa değiştirin.</p>

<p>&nbsp;</p>

<p><strong>3.</strong>&nbsp;Eski yağ filtresini &ccedil;ıkarın.</p>

<p>Yağ filtresinin tabanını temizleyin.</p>

<p>Yeni yağ filtresini tekrar takın.</p>

<p>Yeni yağ filtresini yerleştirin ve sızdırmazlık halkası tabana bağlanıncaya kadar sıkın, sonra yarım d&ouml;n&uuml;ş yapın. Dikkatli olun: Aşırı gerdirme, contayı b&ouml;lebilir veya filtreyi bozabilir.</p>

<p>Yağ karteri boşaltma tapasının tekrar takıldığından emin olun.</p>

<p>&nbsp;</p>

<p><strong>4.</strong>&nbsp;Motoru yeni bir yağ ile doldurun.</p>

<p>Motor yağının &uuml;reticinin tavsiye ettiği derecesi ve viskozitesini kullandığınızdan emin olun. Normalde 4 lt yağ yeterli olur ama tam doldurmadan &ouml;l&ccedil;&uuml;m yapın yağ &ccedil;ubuğu aralığından az ise doldurun yağ &ccedil;ubuğu&nbsp;&nbsp;aralığından fazla ise motor yağı ilave etmeyin.&nbsp;</p>

<h3><strong>Motor Yağı Seviyemi Nasıl Kontrol Edebilirim?</strong></h3>

<p>Doğru motor yağı seviyesinin muhafaza edilmesi son derece &ouml;nemlidir. Motor yağı d&uuml;ş&uuml;k olduğunda, kalan yağın aşırı ısınmasına ve yağlamanın azalmasına neden olursunuz. Motor yağı seviyesi &ccedil;ok y&uuml;ksek olduğunda yağ k&ouml;p&uuml;klenmesine ve bunun spnucunda da&nbsp;&nbsp;yine yağlamanın azlamasına neden olabilir.</p>

<p>&nbsp;</p>

<p><strong>Motor yağ seviyenizi kontrol etmek i&ccedil;in:,</strong></p>

<p>&nbsp;</p>

<p>Aracın motorunu durdurun ve stop edin. 5-10 dakika dinlendirin; Aracın kullanım kılavuzu size&nbsp;&nbsp;motor sıcak veya soğuk olduğunda yağ seviyesinin kontrol edilip edilmeyeceğini veya kontrol edilemeyeceği konusunda rehberlik sağlayabilir.</p>

<p>Kaputu a&ccedil;ın ve yağ &ouml;l&ccedil;&uuml;m &ccedil;ubuğunun yerini tespit edin; tam yer i&ccedil;in kullanım kılavuzunuzu referans alabilirsiniz.</p>

<p>&nbsp;</p>

<p>Yağ &ccedil;ubuğu tipik olarak sarı veya turuncu bir sapa ve &ccedil;oğu durumda sapta bir yağ lambası simgesine sahiptir.</p>

<p><img alt="" src="https://3.bp.blogspot.com/-swlddWGG__A/WpRF3Cdg7hI/AAAAAAAAEA4/j8wD44-DhWQ5S1g3ZfZzNcHSamjf_jFNACK4BGAYYCw/s640/dipstick.jpg" /></p>

<p>&nbsp;</p>

<p>Sapı kullanarak &ccedil;ubuğu &ccedil;ekin ve &ccedil;ubuktaki yağ kalıntılarını silin. Direk tam oturuncaya kadar yuvasına tekrar batırın ve yağ seviyesini g&ouml;rmek i&ccedil;in dışarıya doğru &ccedil;ekin.</p>

<p>&nbsp;</p>

<p>Yağ &ccedil;ubuğunu silmek, hatalı yağ seviyesini &ouml;l&ccedil;menizi ve yanlışlıkla daha y&uuml;ksek seviyeleri g&ouml;sterebilecek kalıntıları &ouml;l&ccedil;memenizi sağlar.</p>

<p>&nbsp;</p>

<p>Yağ seviyesini, belirtilen aralık arasında g&ouml;sterilecek olan doğru &ccedil;alışma aralığında olduğundan emin olmak i&ccedil;in kontrol edin.</p>

<p>&nbsp;</p>

<p>D&uuml;ş&uuml;kse, &uuml;reticinin tavsiye ettiği yağı ilave edin.</p>

<p>&nbsp;</p>

<p>Konuyla ilgili sorularınız varsa konu altı yorum kısmından sorabilirsiniz. En kısa zamanda d&ouml;n&uuml;ş yapılacaktır.</p>
', N'33fb09b4-e7fe-445d-8eeb-1df5a0dfb766.png', 1, 0, CAST(N'2023-05-14' AS Date), 1, 0)
INSERT [dbo].[Makaleler] ([ID], [Kategori_ID], [Yazar_ID], [Baslik], [Ozet], [Icerik], [KapakResim], [GoruntulemeSayi], [BegeniSayi], [EklemeTarihi], [YayinDurumu], [Silinmis]) VALUES (12, 10, 1, N'Araç Segmentleri ve Araç Sınıfları Nelerdir?, Neye Göre Belirlenir?', N'Otomobiller belirli sınıflara ayrılır. Avrupa ve Amerika standartlarında sınıflandırmalar farklılıklar gösterebilir. Türkiye pazarında yoğun olarak kullanılan araç segmentleri kabaca gözden geçirecek olursak şu şekildedir.', N'<h2>Ara&ccedil; Segmentleri Nedir?</h2>

<p>Otomobiller belirli sınıflara ayrılır. Avrupa ve Amerika standartlarında sınıflandırmalar farklılıklar g&ouml;sterebilir. T&uuml;rkiye pazarında yoğun olarak kullanılan&nbsp;<strong>ara&ccedil; segmentleri&nbsp;</strong>kabaca g&ouml;zden ge&ccedil;irecek olursak şu şekildedir.</p>

<p>&nbsp;</p>

<p><strong>A Segment;</strong>&nbsp;Hafif şehir i&ccedil;i kullanımına uygun en k&uuml;&ccedil;&uuml;k otomobildir. &Uuml;lkemizde pek tercih edilmez, yakıt sarfiyatı en uygun seviyelerdedir. Fiat 500, Opel Adam gibi modeller bu sınıfa dahildir. Detaylı&nbsp;<strong>A segmenti ara&ccedil;lar</strong>&nbsp;incelemesine aşağıdaki bağlantıdan ulaşabilirsiniz.<br />
<br />
<strong><a href="http://www.otomobilrehberim.com/2018/02/a-segmenti-araclar.html" target="_blank">http://www.otomobilrehberim.com/2018/02/a-segmenti-araclar.html&nbsp;</a></strong></p>

<p>&nbsp;</p>

<p><strong>B Segment;</strong>&nbsp;Şehir i&ccedil;i kullanıma uygundur hafiftir ve malzeme kalitesi olduk&ccedil;a basit tutularak fiyatların uygun olması sağlanır. 3.70 Metre ile 4.00 Metre arasında değişir. T&uuml;rkiye pazarında en y&uuml;ksek satış grafiğine sahip sınıfta otomobillerdir. Modellerle &ouml;rneklendirecek olursak Renault Clio, Volkswagen Polo, Peugeot 208 gibi modellerdir.&nbsp;Detaylı&nbsp;<strong>B</strong><strong>&nbsp;segmenti ara&ccedil;lar</strong>&nbsp;incelemesine&nbsp;<br />
aşağıdaki bağlantıdan ulaşabilirsiniz.<br />
&nbsp;</p>

<p><a href="http://www.otomobilrehberim.com/2018/03/b-segmenti-araclar.html" target="_blank"><strong>http://www.otomobilrehberim.com/2018/03/b-segmenti-araclar.html&nbsp;</strong></a></p>

<p>&nbsp;</p>

<p><strong>C Segment:</strong>&nbsp;Alt ve orta sınıftaki otomobillerdir C sınıfı otomobiller B segmenti otomobillere g&ouml;re daha konforlu ve performanslıdır. Uzun yolda gidebilme daha kaliteli malzeme gibi kriterler sahiptir. Aile kullanımına uygundur. Modellerle &ouml;rneklendirecek olursak, Volkswagen Golf, Ford Focus, Bmw 1 gibi modellerdir.Detaylı&nbsp;<strong>C&nbsp;</strong><strong>segmenti ara&ccedil;lar</strong>&nbsp;incelemesine aşağıdaki bağlantıdan ulaşabilirsiniz.<br />
<br />
<a href="http://www.otomobilrehberim.com/2018/04/en-iyi-c-segmenti-araclar.html"><strong>http://www.otomobilrehberim.com/2018/04/en-iyi-c-segmenti-araclar.html</strong></a></p>

<p>&nbsp;</p>

<p><strong>D Segment;</strong>&nbsp;Ağırlıkları C segmentine g&ouml;re daha fazla, i&ccedil; hacmi geniş nispeten kaliteli malzemelere sahip ara&ccedil;lardır. G&uuml;&ccedil;l&uuml; motorları ve ağır yapısından dolayı yakıt sarfiyatları biraz fazladır. Modellerler &ouml;rneklendirecek olursak, Volkswagen Passat, Renault Talisman gibi modellerdir.&nbsp;Detaylı&nbsp;<strong>D&nbsp;</strong><strong>segmenti ara&ccedil;lar</strong>&nbsp;incelemesine aşağıdaki bağlantıdan ulaşabilirsiniz.<br />
<br />
<strong><a href="http://www.otomobilrehberim.com/2017/07/d-sinif-araclar-hangileridir-d-segmenti-araba-modelleri.html">http://www.otomobilrehberim.com/2017/07/d-sinif-araclar-hangileridir-d-segmenti-araba-modelleri.html</a></strong></p>

<p>&nbsp;</p>

<p><strong>E Segment;</strong>&nbsp;&Uuml;st sınıf otomobillerdir, performans olarak &uuml;st&uuml;n konfor olarak fazlasıyla iyilerdir. Malzeme kalitesi ve prestij algısına &ouml;nem verilir. Bmw 5 serisi ve Mercedes E gibi modellerdir.</p>

<p>&nbsp;</p>

<p><strong>S Segment;</strong>&nbsp;Makam ara&ccedil;larıdır &uuml;st sınıf kişilerin kullandığı malzeme kalitesi g&uuml;venlik ve motor olarak en iyi otomobillerdir. Mercedes S serisi Bmw 7 Serisi gibi modeller bu sınıfa dahildir.</p>

<p>&nbsp;</p>

<p>Ayrıca segmentler bu karoserilere kurularak dallandırılır.&nbsp;<strong>Crossover-Suv-Mpv-Roadster-Cabriolet-Coupe</strong>&nbsp;gibi kasa yapısına sahip ara&ccedil;lar bu segmentler &uuml;zerine kurulur. Amerikan pazarında ve Avrupa pazarında segment &ouml;l&ccedil;&uuml;leri farklılık g&ouml;sterebilir.&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Araba segmentleri</strong>&nbsp;net bir kalite kriteri g&ouml;stergesi değildir.&nbsp;<strong>B segmenti</strong>&nbsp;bir otomobil&nbsp;<strong>C segmenti</strong>&nbsp;bir otomobilden daha kaliteli malzemeye sahip olabilir, yada yol tutuşu, performans gibi konularda &ccedil;ok daha baskın olabilir.&nbsp;<strong>Ara&ccedil; segmentleri</strong>&nbsp;otomobillerin &ouml;l&ccedil;&uuml;lerinin sınıflandırılmasıdır.</p>
', N'd0b47593-a545-442e-bf15-42320c2d3fd7.jpg', 8, 0, CAST(N'2023-05-14' AS Date), 1, 0)
INSERT [dbo].[Makaleler] ([ID], [Kategori_ID], [Yazar_ID], [Baslik], [Ozet], [Icerik], [KapakResim], [GoruntulemeSayi], [BegeniSayi], [EklemeTarihi], [YayinDurumu], [Silinmis]) VALUES (13, 11, 1, N'Hyundai Ioniq Teknik Özellikleri ve Fiyatı 2017-2018', N'Hyundai Ioniq, Hyundai markasının bir hibrit otomobilidir. Yaklaşık olarak 100 kilometrede 3,9 litre yakıt tüketimi verilerine sahip ve bunu iki farklı motora borçludur. Birincisi elektrikli motor diğeri ise içten yanmalı bir motordur.', N'<h2>Hyundai Ioniq Teknik &Ouml;zellikleri ve Fiyatı&nbsp;</h2>

<p><strong>Hyundai Ioniq</strong>, Hyundai markasının bir hibrit otomobilidir. Yaklaşık olarak 100 kilometrede 3,9 litre yakıt t&uuml;ketimi verilerine sahip ve bunu iki farklı motora bor&ccedil;ludur. Birincisi elektrikli motor diğeri ise i&ccedil;ten yanmalı bir motordur.</p>

<p>&nbsp;</p>

<p>G&ouml;ze &ccedil;arpan en &ouml;nemli farklılıklardan birisi el freni tabiriyle bildiğimiz fren sisteminin, Mercedes marka ara&ccedil;larda olduğu gibi ayak stop freni şekline d&ouml;n&uuml;şm&uuml;ş halinin bu ara&ccedil;ta kullanılmış olmasıdır. Hyundai Ioniq dış tasarımı konusunda bir tık daha ileri gitmiş ve g&ouml;r&uuml;nt&uuml;s&uuml; itibariyle ne bir sedan araca, nede bir hatchback araca benzemektedir. Aracın arkadaşında spoiler gibi g&ouml;r&uuml;nen kısım aslında bagaj kapağının devamı olup, hi&ccedil;bir şekilde spoiler &ouml;zelliği taşımamaktadır.</p>

<p><img alt="" src="https://2.bp.blogspot.com/-_3BUHngPbUM/WeejTIlgz0I/AAAAAAAADHg/F3Hi_nkY_Vgl4YkWHf7EADmK-izD0-HCACK4BGAYYCw/s640/resized_951ae-d84057aehyundaiioniq2017128001-compressor.jpg" /></p>

<p>&nbsp;</p>

<p><strong>Hyundai Ioniq</strong>&nbsp;ilk olarak elektrikli motorunu kullanmakta, gerek duyduğu taktirde i&ccedil;ten yanmalı motoru ve elektrik motorunu devreye sokmaktadır. Bu da bizlere yakıt konusunda avantaj sağlamaktadır. Ara&ccedil; ile yokuş aşağı gidildiği durumlarda ise ara&ccedil; hem benzin t&uuml;ketmeden hem de elektrik pillerini şarj ederek tasarruf sağlamakla kalmayıp, ayrıyeten &ccedil;evre ile dost olduğunu g&ouml;stermektedir.</p>

<p>&nbsp;</p>

<p>Hyundai Ioniq bir hibrit ara&ccedil; olmasına rağmen gerek performansı gerek ise yakıt t&uuml;ketim durumu g&ouml;z &ouml;n&uuml;ne alınacak olursa, &ccedil;oğu dizel motorlu ara&ccedil;tan daha karlı bir kullanım sunabilmektedir.</p>

<p>&nbsp;</p>

<p><img alt="" src="https://1.bp.blogspot.com/-R469KCNL4c0/WdVS5dJEL9I/AAAAAAAAC-w/BWKTUg_aeHAcJ-QbQiCB47suARMM8o85gCK4BGAYYCw/s640/hyundaiioniqhybrid5-660x371.jpg" /></p>

<p>&nbsp;</p>

<p><strong>Hyundai Ioniq</strong>&rsquo;in Ekim 2017 tarihli piyasa liste fiyatı yaklaşık olarak 123.900 TL&rsquo;dir. Bu fiyatla &ccedil;oğu dizel ara&ccedil;tan daha karlı bir kombinasyon oluşturmaktadır.</p>

<p>&nbsp;</p>

<p>Hyundai Ioniq T&uuml;rkiye otomobil pazarında şu an i&ccedil;in tek paket olarak sunulmaktadır. Bu pakete sunroof, dijital klima, navigasyon paketi ve al&uuml;minyum jantları dahildir. Ayrıca ara&ccedil; i&ccedil;erisinde teknoloji son nokta olarak kullanılmış olup, akıllı telefonlar i&ccedil;in kablosuz şarj &ouml;zelliği dahi mevcuttur. Şanzıman olarak 7 ileri otomatik ara&ccedil; ile birlikte senkronize bir şekilde kullanılmıştır.</p>
', N'c7e0605c-5cae-4c21-b13a-5050f7545f90.jpg', 2, 0, CAST(N'2023-05-14' AS Date), 1, 0)
SET IDENTITY_INSERT [dbo].[Makaleler] OFF
SET IDENTITY_INSERT [dbo].[Uyeler] ON 

INSERT [dbo].[Uyeler] ([ID], [Isim], [Soyisim], [KullaniciAdi], [Mail], [Sifre], [UyelikTarihi], [Durum]) VALUES (6, N'test', N'test', N'test3', N'test2@gmail.com', N'test', CAST(N'2023-05-10' AS Date), 1)
INSERT [dbo].[Uyeler] ([ID], [Isim], [Soyisim], [KullaniciAdi], [Mail], [Sifre], [UyelikTarihi], [Durum]) VALUES (7, N'test', N'test', N'test4', N'test5@gmail.com', N'test', CAST(N'2023-05-10' AS Date), 0)
INSERT [dbo].[Uyeler] ([ID], [Isim], [Soyisim], [KullaniciAdi], [Mail], [Sifre], [UyelikTarihi], [Durum]) VALUES (10, N'test', N'test', N'test', N'test@gmail.com', N'test', CAST(N'2023-05-14' AS Date), 1)
INSERT [dbo].[Uyeler] ([ID], [Isim], [Soyisim], [KullaniciAdi], [Mail], [Sifre], [UyelikTarihi], [Durum]) VALUES (13, N'test', N'test', N'testtttt', N'test6@gmail.com', N'test', CAST(N'2023-05-14' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Uyeler] OFF
SET IDENTITY_INSERT [dbo].[Yoneticiler] ON 

INSERT [dbo].[Yoneticiler] ([ID], [YoneticiTur_ID], [Isim], [Soyisim], [KullaniciAdi], [Mail], [Sifre], [Durum]) VALUES (1, 1, N'John', N'Doe', N'JoDo', N'jodo26@hotmail.com', N'1234', 1)
SET IDENTITY_INSERT [dbo].[Yoneticiler] OFF
SET IDENTITY_INSERT [dbo].[YoneticiTurleri] ON 

INSERT [dbo].[YoneticiTurleri] ([ID], [Isim]) VALUES (1, N'Admin')
INSERT [dbo].[YoneticiTurleri] ([ID], [Isim]) VALUES (2, N'Yazar')
SET IDENTITY_INSERT [dbo].[YoneticiTurleri] OFF
SET IDENTITY_INSERT [dbo].[Yorumlar] ON 

INSERT [dbo].[Yorumlar] ([ID], [Uye_ID], [Makale_ID], [Icerik], [EklemeTarihi], [BegeniSayi], [Durum]) VALUES (3, 13, 12, N'test', CAST(N'2023-05-14 00:27:25.480' AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[Yorumlar] OFF
ALTER TABLE [dbo].[Makaleler]  WITH CHECK ADD  CONSTRAINT [fk_MakaleKategori] FOREIGN KEY([Kategori_ID])
REFERENCES [dbo].[Kategoriler] ([ID])
GO
ALTER TABLE [dbo].[Makaleler] CHECK CONSTRAINT [fk_MakaleKategori]
GO
ALTER TABLE [dbo].[Makaleler]  WITH CHECK ADD  CONSTRAINT [fk_MakaleYonetici] FOREIGN KEY([Yazar_ID])
REFERENCES [dbo].[Yoneticiler] ([ID])
GO
ALTER TABLE [dbo].[Makaleler] CHECK CONSTRAINT [fk_MakaleYonetici]
GO
ALTER TABLE [dbo].[Yoneticiler]  WITH CHECK ADD  CONSTRAINT [fk_YoneticiYoneticiTur] FOREIGN KEY([YoneticiTur_ID])
REFERENCES [dbo].[YoneticiTurleri] ([ID])
GO
ALTER TABLE [dbo].[Yoneticiler] CHECK CONSTRAINT [fk_YoneticiYoneticiTur]
GO
ALTER TABLE [dbo].[Yorumlar]  WITH CHECK ADD  CONSTRAINT [fk_YorumMakale] FOREIGN KEY([Makale_ID])
REFERENCES [dbo].[Makaleler] ([ID])
GO
ALTER TABLE [dbo].[Yorumlar] CHECK CONSTRAINT [fk_YorumMakale]
GO
ALTER TABLE [dbo].[Yorumlar]  WITH CHECK ADD  CONSTRAINT [fk_YorumUye] FOREIGN KEY([Uye_ID])
REFERENCES [dbo].[Uyeler] ([ID])
GO
ALTER TABLE [dbo].[Yorumlar] CHECK CONSTRAINT [fk_YorumUye]
GO
