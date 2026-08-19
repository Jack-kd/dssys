.class public Lcom/sigmob/sdk/base/utils/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/utils/a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/utils/z;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/utils/z;-><init>(Lcom/sigmob/sdk/base/utils/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/utils/a;->c:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method private a()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/base/utils/a;->b()I

    move-result v0

    iget v1, p0, Lcom/sigmob/sdk/base/utils/a;->a:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/utils/a;->c:Landroid/view/ViewGroup$LayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sigmob/sdk/base/utils/a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    iput v0, p0, Lcom/sigmob/sdk/base/utils/a;->a:I

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/sigmob/sdk/base/utils/a;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/utils/a;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/utils/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/utils/a;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag",
            "PrivateApi"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "bool"

    const-string v1, "android"

    const-string v2, "config_showNavigationBar"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "qemu.hw.mainkeys"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    :catch_0
    :cond_2
    return p0
.end method

.method private b()I
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/utils/a;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method
