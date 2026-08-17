.class public Lcom/sigmob/sdk/base/common/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN_AD_FORMAT"

    return-object p0

    :pswitch_0
    const-string p0, "BANNER"

    return-object p0

    :pswitch_1
    const-string p0, "NEW_INTERSTITIAL"

    return-object p0

    :pswitch_2
    const-string p0, "UNIFIED_NATIVE"

    return-object p0

    :pswitch_3
    const-string p0, "FULLSCREEN_VIDEO"

    return-object p0

    :pswitch_4
    const-string p0, "DRIFT"

    return-object p0

    :pswitch_5
    const-string p0, "SPLASH"

    return-object p0

    :pswitch_6
    const-string p0, "REWARD_VIDEO"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
