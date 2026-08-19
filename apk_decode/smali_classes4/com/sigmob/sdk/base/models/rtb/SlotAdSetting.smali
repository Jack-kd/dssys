.class public final Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;
.super Lcom/czhj/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$ProtoAdapter_SlotAdSetting;,
        Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/AndroidMessage<",
        "Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;",
        "Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_APK_DOWNLOAD_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_CLICK_LOSE_RATE:Ljava/lang/Integer;

.field public static final DEFAULT_DISABLE_X_REQUESTED_WITH:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_DEEPLINK_AND_LANDING_PAGE:Ljava/lang/Boolean;

.field public static final DEFAULT_RESUMABLE_DOWNLOAD:Ljava/lang/Boolean;

.field public static final DEFAULT_RETRY_COUNT:Ljava/lang/Integer;

.field public static final DEFAULT_USE_DOWNLOADED_APK:Ljava/lang/Boolean;

.field private static final serialVersionUID:J


# instance fields
.field public final apk_download_type:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x7
    .end annotation
.end field

.field public final click_lose_rate:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xd
    .end annotation
.end field

.field public final disable_x_requested_with:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x5
    .end annotation
.end field

.field public final enable_deeplink_and_landing_page:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xa
    .end annotation
.end field

.field public final interstitial_setting:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.rtb.InterstitialSetting#ADAPTER"
        tag = 0x6
    .end annotation
.end field

.field public final link_actions:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.rtb.LinkAction#ADAPTER"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/rtb/LinkAction;",
            ">;"
        }
    .end annotation
.end field

.field public final market_package_name:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final native_setting:Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.rtb.NativeAdSetting#ADAPTER"
        tag = 0x3
    .end annotation
.end field

.field public final resumable_download:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x8
    .end annotation
.end field

.field public final retry_count:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x4
    .end annotation
.end field

.field public final rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.rtb.RvAdSetting#ADAPTER"
        tag = 0x1
    .end annotation
.end field

.field public final splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.rtb.SplashAdSetting#ADAPTER"
        tag = 0x2
    .end annotation
.end field

.field public final use_downloaded_apk:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$ProtoAdapter_SlotAdSetting;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$ProtoAdapter_SlotAdSetting;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/czhj/wire/AndroidMessage;->newCreator(Lcom/czhj/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->DEFAULT_RETRY_COUNT:Ljava/lang/Integer;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->DEFAULT_DISABLE_X_REQUESTED_WITH:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->DEFAULT_APK_DOWNLOAD_TYPE:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->DEFAULT_RESUMABLE_DOWNLOAD:Ljava/lang/Boolean;

    sput-object v1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->DEFAULT_USE_DOWNLOADED_APK:Ljava/lang/Boolean;

    sput-object v1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->DEFAULT_ENABLE_DEEPLINK_AND_LANDING_PAGE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->DEFAULT_CLICK_LOSE_RATE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;",
            "Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;",
            "Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/rtb/LinkAction;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v14, Lcom/czhj/wire/okio/ByteString;->EMPTY:Lcom/czhj/wire/okio/ByteString;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;-><init>(Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;",
            "Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;",
            "Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/rtb/LinkAction;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/czhj/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-direct {p0, v0, p14}, Lcom/czhj/wire/AndroidMessage;-><init>(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->native_setting:Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->retry_count:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->disable_x_requested_with:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->interstitial_setting:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    iput-object p7, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->apk_download_type:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->resumable_download:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->use_downloaded_apk:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->enable_deeplink_and_landing_page:Ljava/lang/Boolean;

    const-string p1, "market_package_name"

    invoke-static {p1, p11}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->market_package_name:Ljava/util/List;

    const-string p1, "link_actions"

    invoke-static {p1, p12}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->link_actions:Ljava/util/List;

    iput-object p13, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->click_lose_rate:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/czhj/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->native_setting:Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->native_setting:Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->retry_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->retry_count:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->disable_x_requested_with:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->disable_x_requested_with:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->interstitial_setting:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->interstitial_setting:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->apk_download_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->apk_download_type:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->resumable_download:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->resumable_download:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->use_downloaded_apk:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->use_downloaded_apk:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->enable_deeplink_and_landing_page:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->enable_deeplink_and_landing_page:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->market_package_name:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->market_package_name:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->link_actions:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->link_actions:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->click_lose_rate:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->click_lose_rate:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->native_setting:Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->retry_count:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->disable_x_requested_with:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->interstitial_setting:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->apk_download_type:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->resumable_download:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->use_downloaded_apk:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->enable_deeplink_and_landing_page:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->market_package_name:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->link_actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->click_lose_rate:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :cond_a
    add-int/2addr v0, v2

    iput v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    :cond_b
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/czhj/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->newBuilder()Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->native_setting:Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->native_setting:Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->retry_count:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->retry_count:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->disable_x_requested_with:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->disable_x_requested_with:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->interstitial_setting:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->interstitial_setting:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->apk_download_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->apk_download_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->resumable_download:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->resumable_download:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->use_downloaded_apk:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->use_downloaded_apk:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->enable_deeplink_and_landing_page:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->enable_deeplink_and_landing_page:Ljava/lang/Boolean;

    const-string v1, "market_package_name"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->market_package_name:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->market_package_name:Ljava/util/List;

    const-string v1, "link_actions"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->link_actions:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->link_actions:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->click_lose_rate:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->click_lose_rate:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/wire/Message$Builder;->addUnknownFields(Lcom/czhj/wire/okio/ByteString;)Lcom/czhj/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    if-eqz v1, :cond_0

    const-string v1, ", rv_setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;

    if-eqz v1, :cond_1

    const-string v1, ", splash_setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->native_setting:Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;

    if-eqz v1, :cond_2

    const-string v1, ", native_setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->native_setting:Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->retry_count:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const-string v1, ", retry_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->retry_count:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->disable_x_requested_with:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    const-string v1, ", disable_x_requested_with="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->disable_x_requested_with:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->interstitial_setting:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    if-eqz v1, :cond_5

    const-string v1, ", interstitial_setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->interstitial_setting:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->apk_download_type:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const-string v1, ", apk_download_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->apk_download_type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->resumable_download:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    const-string v1, ", resumable_download="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->resumable_download:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->use_downloaded_apk:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    const-string v1, ", use_downloaded_apk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->use_downloaded_apk:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->enable_deeplink_and_landing_page:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    const-string v1, ", enable_deeplink_and_landing_page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->enable_deeplink_and_landing_page:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->market_package_name:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, ", market_package_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->market_package_name:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->link_actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ", link_actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->link_actions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->click_lose_rate:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const-string v1, ", click_lose_rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->click_lose_rate:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c
    const/4 v1, 0x2

    const-string v2, "SlotAdSetting{"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
