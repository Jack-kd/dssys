.class public final enum Lcom/fl/saas/Q0$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/Q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field public static final enum c:Lcom/fl/saas/Q0$c;

.field public static final enum d:Lcom/fl/saas/Q0$c;

.field public static final enum e:Lcom/fl/saas/Q0$c;

.field public static final enum f:Lcom/fl/saas/Q0$c;

.field public static final enum g:Lcom/fl/saas/Q0$c;

.field public static final enum h:Lcom/fl/saas/Q0$c;

.field public static final enum i:Lcom/fl/saas/Q0$c;

.field private static final synthetic j:[Lcom/fl/saas/Q0$c;


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/fl/saas/Q0$c;

    .line 2
    .line 3
    sget v1, Lcom/fl/saas/R$layout;->fl_adx_template_view_text_img_mixture:I

    .line 4
    .line 5
    const-string v2, "MIXED_TEXT_IMAGE"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/fl/saas/Q0$c;-><init>(Ljava/lang/String;IZI)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/fl/saas/Q0$c;->c:Lcom/fl/saas/Q0$c;

    .line 13
    .line 14
    new-instance v0, Lcom/fl/saas/Q0$c;

    .line 15
    .line 16
    sget v1, Lcom/fl/saas/R$layout;->fl_adx_template_view_text_float_layer:I

    .line 17
    .line 18
    const-string v2, "TEXT_OVERLAY"

    .line 19
    .line 20
    invoke-direct {v0, v2, v4, v4, v1}, Lcom/fl/saas/Q0$c;-><init>(Ljava/lang/String;IZI)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/fl/saas/Q0$c;->d:Lcom/fl/saas/Q0$c;

    .line 24
    .line 25
    new-instance v0, Lcom/fl/saas/Q0$c;

    .line 26
    .line 27
    sget v1, Lcom/fl/saas/R$layout;->fl_adx_template_view_top_text_bottom_img_with_btn:I

    .line 28
    .line 29
    const-string v2, "TOP_TEXT_BOTTOM_IMAGE"

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    invoke-direct {v0, v2, v5, v4, v1}, Lcom/fl/saas/Q0$c;-><init>(Ljava/lang/String;IZI)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/fl/saas/Q0$c;->e:Lcom/fl/saas/Q0$c;

    .line 36
    .line 37
    new-instance v0, Lcom/fl/saas/Q0$c;

    .line 38
    .line 39
    sget v1, Lcom/fl/saas/R$layout;->fl_adx_template_view_top_img_bottom_text_with_btn:I

    .line 40
    .line 41
    const-string v2, "TOP_IMAGE_BOTTOM_TEXT"

    .line 42
    .line 43
    const/4 v5, 0x3

    .line 44
    invoke-direct {v0, v2, v5, v4, v1}, Lcom/fl/saas/Q0$c;-><init>(Ljava/lang/String;IZI)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/fl/saas/Q0$c;->f:Lcom/fl/saas/Q0$c;

    .line 48
    .line 49
    new-instance v0, Lcom/fl/saas/Q0$c;

    .line 50
    .line 51
    sget v1, Lcom/fl/saas/R$layout;->fl_adx_template_view_left_text_right_img:I

    .line 52
    .line 53
    const-string v2, "LEFT_TEXT_RIGHT_IMAGE"

    .line 54
    .line 55
    const/4 v5, 0x4

    .line 56
    invoke-direct {v0, v2, v5, v3, v1}, Lcom/fl/saas/Q0$c;-><init>(Ljava/lang/String;IZI)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/fl/saas/Q0$c;->g:Lcom/fl/saas/Q0$c;

    .line 60
    .line 61
    new-instance v0, Lcom/fl/saas/Q0$c;

    .line 62
    .line 63
    sget v1, Lcom/fl/saas/R$layout;->fl_adx_template_view_left_img_right_text:I

    .line 64
    .line 65
    const-string v2, "LEFT_IMAGE_RIGHT_TEXT"

    .line 66
    .line 67
    const/4 v5, 0x5

    .line 68
    invoke-direct {v0, v2, v5, v3, v1}, Lcom/fl/saas/Q0$c;-><init>(Ljava/lang/String;IZI)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/fl/saas/Q0$c;->h:Lcom/fl/saas/Q0$c;

    .line 72
    .line 73
    new-instance v0, Lcom/fl/saas/Q0$c;

    .line 74
    .line 75
    sget v1, Lcom/fl/saas/R$layout;->fl_adx_template_view_img:I

    .line 76
    .line 77
    const-string v2, "IMAGE_ONLY"

    .line 78
    .line 79
    const/4 v3, 0x6

    .line 80
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/fl/saas/Q0$c;-><init>(Ljava/lang/String;IZI)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/fl/saas/Q0$c;->i:Lcom/fl/saas/Q0$c;

    .line 84
    .line 85
    invoke-static {}, Lcom/fl/saas/Q0$c;->a()[Lcom/fl/saas/Q0$c;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lcom/fl/saas/Q0$c;->j:[Lcom/fl/saas/Q0$c;

    .line 90
    .line 91
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lcom/fl/saas/Q0$c;->a:I

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/fl/saas/Q0$c;->b:Z

    .line 7
    .line 8
    return-void
.end method

.method public static a(I)Lcom/fl/saas/Q0$c;
    .locals 5

    .line 3
    invoke-static {}, Lcom/fl/saas/Q0$c;->values()[Lcom/fl/saas/Q0$c;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/fl/saas/Q0$c;->c:Lcom/fl/saas/Q0$c;

    return-object p0
.end method

.method private static synthetic a()[Lcom/fl/saas/Q0$c;
    .locals 7

    .line 1
    sget-object v0, Lcom/fl/saas/Q0$c;->c:Lcom/fl/saas/Q0$c;

    sget-object v1, Lcom/fl/saas/Q0$c;->d:Lcom/fl/saas/Q0$c;

    sget-object v2, Lcom/fl/saas/Q0$c;->e:Lcom/fl/saas/Q0$c;

    sget-object v3, Lcom/fl/saas/Q0$c;->f:Lcom/fl/saas/Q0$c;

    sget-object v4, Lcom/fl/saas/Q0$c;->g:Lcom/fl/saas/Q0$c;

    sget-object v5, Lcom/fl/saas/Q0$c;->h:Lcom/fl/saas/Q0$c;

    sget-object v6, Lcom/fl/saas/Q0$c;->i:Lcom/fl/saas/Q0$c;

    filled-new-array/range {v0 .. v6}, [Lcom/fl/saas/Q0$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fl/saas/Q0$c;
    .locals 1

    .line 1
    const-class v0, Lcom/fl/saas/Q0$c;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fl/saas/Q0$c;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fl/saas/Q0$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/fl/saas/Q0$c;->j:[Lcom/fl/saas/Q0$c;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fl/saas/Q0$c;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fl/saas/Q0$c;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 2
    iget v0, p0, Lcom/fl/saas/Q0$c;->a:I

    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/Q0$c;->b:Z

    .line 2
    .line 3
    return v0
.end method
