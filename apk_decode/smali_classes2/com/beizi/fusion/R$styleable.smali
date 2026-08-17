.class public final Lcom/beizi/fusion/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static ASNPUnifiedExpressContainer:[I = null

.field public static ASNPUnifiedExpressContainer_api_key:I = 0x0

.field public static AdView:[I = null

.field public static AdView_auto_refresh_interval:I = 0x0

.field public static AdView_beizi_adSize:I = 0x1

.field public static AdView_beizi_adUnitId:I = 0x2

.field public static AdView_expands_to_fit_screen_width:I = 0x3

.field public static AdView_load_landing_page_in_background:I = 0x4

.field public static AdView_opens_native_browser:I = 0x5

.field public static AdView_resize_ad_to_fit_container:I = 0x6

.field public static AdView_should_reload_on_resume:I = 0x7

.field public static AdView_show_loading_indicator:I = 0x8

.field public static AdView_test:I = 0x9

.field public static AdView_transition_direction:I = 0xa

.field public static AdView_transition_duration:I = 0xb

.field public static AdView_transition_type:I = 0xc

.field public static AdView_video_scale_type:I = 0xd

.field public static BeiZiCircleProgressViewStyle:[I = null

.field public static BeiZiCircleProgressViewStyle_adScopeCircleColor:I = 0x0

.field public static BeiZiCircleProgressViewStyle_adScopeRadius:I = 0x1

.field public static BeiZiCircleProgressViewStyle_adScopeRingBgColor:I = 0x2

.field public static BeiZiCircleProgressViewStyle_adScopeRingColor:I = 0x3

.field public static BeiZiCircleProgressViewStyle_adScopeStrokeWidth:I = 0x4

.field public static BeiZiCircleProgressViewStyle_adScopeTextColor:I = 0x5

.field public static BeiZi_BackArrowView:[I = null

.field public static BeiZi_BackArrowView_beizi_bav_arrow_style:I = 0x0

.field public static BeiZi_BackArrowView_beizi_bav_color:I = 0x1

.field public static BeiZi_BackArrowView_beizi_bav_stroke_width:I = 0x2

.field public static adscope_back_arrow_view:[I = null

.field public static adscope_back_arrow_view_adscope_bav_arrow_style:I = 0x0

.field public static adscope_back_arrow_view_adscope_bav_color:I = 0x1

.field public static adscope_back_arrow_view_adscope_bav_stroke_width:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const v0, 0x7f04003e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/beizi/fusion/R$styleable;->ASNPUnifiedExpressContainer:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/beizi/fusion/R$styleable;->AdView:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/beizi/fusion/R$styleable;->BeiZiCircleProgressViewStyle:[I

    const v0, 0x7f040066

    const v1, 0x7f040067

    const v2, 0x7f040065

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/beizi/fusion/R$styleable;->BeiZi_BackArrowView:[I

    const v0, 0x7f04002f

    const v1, 0x7f040030

    const v2, 0x7f04002e

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/beizi/fusion/R$styleable;->adscope_back_arrow_view:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040048
        0x7f040062
        0x7f040064
        0x7f040138
        0x7f040279
        0x7f0402c2
        0x7f0402f1
        0x7f040309
        0x7f040310
        0x7f040365
        0x7f0403a2
        0x7f0403a3
        0x7f0403a4
        0x7f0403aa
    .end array-data

    :array_1
    .array-data 4
        0x7f040027
        0x7f040028
        0x7f040029
        0x7f04002a
        0x7f04002b
        0x7f04002c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
