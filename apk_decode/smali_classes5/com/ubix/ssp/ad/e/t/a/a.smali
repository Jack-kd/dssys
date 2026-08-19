.class public Lcom/ubix/ssp/ad/e/t/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ubix/ssp/ad/e/t/a/a;


# instance fields
.field b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/a;->b:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x28

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-instance v1, Landroid/util/LruCache;

    invoke-direct {v1, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/a;->b:Landroid/util/LruCache;

    return-void
.end method

.method public static a()Lcom/ubix/ssp/ad/e/t/a/a;
    .locals 1

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/t/a/a;->a:Lcom/ubix/ssp/ad/e/t/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/e/t/a/a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/t/a/a;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/t/a/a;->a:Lcom/ubix/ssp/ad/e/t/a/a;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/a;->b:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public a(ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/t/a/a;->b:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/t/a/a;->b:Landroid/util/LruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
