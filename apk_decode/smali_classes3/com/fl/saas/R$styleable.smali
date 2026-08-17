.class public final Lcom/fl/saas/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static FLAdxDownloadProgressButton:[I = null

.field public static FLAdxDownloadProgressButton_fl_adx_progress_btn_background_color:I = 0x0

.field public static FLAdxDownloadProgressButton_fl_adx_progress_btn_background_second_color:I = 0x1

.field public static FLAdxDownloadProgressButton_fl_adx_progress_btn_ball_style:I = 0x2

.field public static FLAdxDownloadProgressButton_fl_adx_progress_btn_border_width:I = 0x3

.field public static FLAdxDownloadProgressButton_fl_adx_progress_btn_radius:I = 0x4

.field public static FLAdxDownloadProgressButton_fl_adx_progress_btn_text_color:I = 0x5

.field public static FLAdxDownloadProgressButton_fl_adx_progress_btn_text_cover_color:I = 0x6

.field public static FLAspectRatioRelativeLayout:[I = null

.field public static FLAspectRatioRelativeLayout_fl_aspectRatio:I = 0x0

.field public static FLCircularCountDownView:[I = null

.field public static FLCircularCountDownView_fl_centerBackgroundColor:I = 0x0

.field public static FLCircularCountDownView_fl_maxProgress:I = 0x1

.field public static FLCircularCountDownView_fl_progress:I = 0x2

.field public static FLCircularCountDownView_fl_progressbarBackgroundColor:I = 0x3

.field public static FLCircularCountDownView_fl_progressbarColor:I = 0x4

.field public static FLCircularCountDownView_fl_radius:I = 0x5

.field public static FLCircularCountDownView_fl_strokeWidth:I = 0x6

.field public static FLCircularCountDownView_fl_text:I = 0x7

.field public static FLCircularCountDownView_fl_textColor:I = 0x8

.field public static FLCircularCountDownView_fl_textSize:I = 0x9

.field public static FLCountDownTextView:[I = null

.field public static FLCountDownTextView_fl_bg_color:I = 0x0

.field public static FLCountDownTextView_fl_bg_radius:I = 0x1

.field public static FLCountDownTextView_fl_count:I = 0x2

.field public static FLRoundedFrameLayout:[I = null

.field public static FLRoundedFrameLayout_fl_borderColor:I = 0x0

.field public static FLRoundedFrameLayout_fl_borderWidth:I = 0x1

.field public static FLRoundedFrameLayout_fl_bottomLeftRadius:I = 0x2

.field public static FLRoundedFrameLayout_fl_bottomRightRadius:I = 0x3

.field public static FLRoundedFrameLayout_fl_radius:I = 0x4

.field public static FLRoundedFrameLayout_fl_topLeftRadius:I = 0x5

.field public static FLRoundedFrameLayout_fl_topRightRadius:I = 0x6

.field public static FLShaderRoundImageView:[I

.field public static FLShaderRoundImageView_fl_radius:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/fl/saas/R$styleable;->FLAdxDownloadProgressButton:[I

    const v1, 0x7f040152

    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/fl/saas/R$styleable;->FLAspectRatioRelativeLayout:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/fl/saas/R$styleable;->FLCircularCountDownView:[I

    const v1, 0x7f040154

    const v2, 0x7f04015a

    const v3, 0x7f040153

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    sput-object v1, Lcom/fl/saas/R$styleable;->FLCountDownTextView:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/fl/saas/R$styleable;->FLRoundedFrameLayout:[I

    const v0, 0x7f04015f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/fl/saas/R$styleable;->FLShaderRoundImageView:[I

    return-void

    :array_0
    .array-data 4
        0x7f04014b
        0x7f04014c
        0x7f04014d
        0x7f04014e
        0x7f04014f
        0x7f040150
        0x7f040151
    .end array-data

    :array_1
    .array-data 4
        0x7f040159
        0x7f04015b
        0x7f04015c
        0x7f04015d
        0x7f04015e
        0x7f04015f
        0x7f040160
        0x7f040161
        0x7f040162
        0x7f040163
    .end array-data

    :array_2
    .array-data 4
        0x7f040155
        0x7f040156
        0x7f040157
        0x7f040158
        0x7f04015f
        0x7f040164
        0x7f040165
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
