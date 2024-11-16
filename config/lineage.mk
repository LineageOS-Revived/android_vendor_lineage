# Disable RescueParty due to high risk of data loss
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.disable_rescue=true

# Camera
ifneq ($(TARGET_APERTURE_OPTOUT),true)
PRODUCT_PACKAGES += \
    Aperture_prebuilt \
    Glimpse_prebuilt
endif

#Captive-Portal detection overlays
#(default: GrapheneOS - see vendor/lineage/overlay)
PRODUCT_PACKAGES += \
  overlay-204-android-Google \
  overlay-204-android-openSUSE \
  overlay-204-android-Ubuntu \
  overlay-204-networkstack-Google \
  overlay-204-networkstack-openSUSE \
  overlay-204-networkstack-Ubuntu

# Extra packages
PRODUCT_PACKAGES += \
    crDroidThemesStub \
    ThemePicker \
    StitchImage

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml \
    AccuratistFont \
    AclonicaFont \
    Amarante \
    BariolFont \
    CagliostroFont \
    CoconFont \
    ComfortaaFont \
    ComicSansFont \
    CoolstoryFont \
    ExotwoFont \
    Fifa2018Font \
    GoogleSansFont \
    GrandHotelFont \
    HarmonyFont \
    LatoFont \
    LGSmartGothicFont \
    LinotteFont \
    NokiaPureFont \
    NothingDot57 \
    NunitoFont \
    OneplusSansFont \
    OneplusSlateFont \
    OswaldFont \
    QuandoFont \
    RedressedFont \
    ReemKufiFont \
    RobotoCondensedFont \
    RosemaryFont \
    RubikFont \
    SamsungOneFont \
    SonySketchFont \
    StoropiaFont \
    SurferFont \
    UbuntuFont

# Accents
PRODUCT_PACKAGES += \
    Amber \
    Black \
    Blue \
    BlueGrey \
    Brown \
    Cyan \
    DeepOrange \
    DeepPurple \
    Green \
    Grey \
    Indigo \
    LightBlue \
    LightGreen \
    Lime \
    Orange \
    Pink \
    Purple \
    Red \
    Teal \
    UserOne \
    UserTwo \
    UserThree \
    UserFour \
    UserFive \
    UserSix \
    UserSeven \
    Yellow

# Brand Accents
PRODUCT_PACKAGES += \
    AospaGreen \
    AndroidOneGreen \
    CocaColaRed \
    DiscordPurple \
    FacebookBlue \
    InstagramCerise \
    JollibeeCrimson \
    MonsterEnergyGreen \
    NextbitMint \
    OneplusRed \
    PepsiBlue \
    PocophoneYellow \
    RazerGreen \
    SamsungBlue \
    SpotifyGreen \
    StarbucksGreen \
    TwitchPurple \
    TwitterBlue \
    XboxGreen \
    XiaomiOrange

# Dark Styles
PRODUCT_PACKAGES += \
    SystemAmoledBlack \
    SystemCharcoalBlack

# Signal / WiFi Icons
PRODUCT_PACKAGES += \
	BarsSignalOverlay \
	BarsWiFiOverlay \
	InsideSignalOverlay \
	InsideWiFiOverlay \
	RoundSignalOverlay \
	RoundWiFiOverlay \
	SneakySignalOverlay \
	SneakyWiFiOverlay \
	StrokeSignalOverlay \
	StrokeWiFiOverlay \
	WavySignalOverlay \
	WavyWiFiOverlay \
	XperiaSignalOverlay \
	XperiaWiFiOverlay \
	ZigZagSignalOverlay \
	ZigZagWiFiOverlay
