.class public abstract Lcom/ubix/ssp/ad/e/v/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/v/e$b;,
        Lcom/ubix/ssp/ad/e/v/e$a;
    }
.end annotation


# static fields
.field protected static a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected static b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field protected static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/v/e;->d()V

    sget v0, Lcom/ubix/ssp/ad/d/b;->K:I

    sget v1, Lcom/ubix/ssp/ad/d/b;->L:I

    invoke-virtual {p0, v0, v1}, Lcom/ubix/ssp/ad/e/v/e;->a(II)V

    return-void
.end method

.method public static b()Lcom/ubix/ssp/ad/e/v/a;
    .locals 1

    .line 2
    new-instance v0, Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/v/g/a;-><init>()V

    return-object v0
.end method

.method public static c()Lcom/ubix/ssp/ad/e/v/f;
    .locals 1

    new-instance v0, Lcom/ubix/ssp/ad/e/v/g/b;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/v/g/b;-><init>()V

    return-object v0
.end method

.method private d()V
    .locals 2

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/LruCache;

    sget v1, Lcom/ubix/ssp/ad/d/b;->K:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/LruCache;

    sget v1, Lcom/ubix/ssp/ad/d/b;->L:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    :cond_1
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->c:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/v/e;->c:Ljava/util/Map;

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Message;
    .locals 3

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "path"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public a(II)V
    .locals 1

    .line 3
    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LruCache;->maxSize()I

    move-result v0

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/ubix/ssp/ad/e/v/e;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->resize(I)V

    :cond_0
    sget-object p1, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/util/LruCache;->maxSize()I

    move-result p1

    if-eq p1, p2, :cond_1

    sget-object p1, Lcom/ubix/ssp/ad/e/v/e;->b:Landroid/util/LruCache;

    invoke-virtual {p1, p2}, Landroid/util/LruCache;->resize(I)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method
