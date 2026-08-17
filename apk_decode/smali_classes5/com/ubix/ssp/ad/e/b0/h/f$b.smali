.class public final Lcom/ubix/ssp/ad/e/b0/h/f$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/b0/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/ubix/ssp/ad/e/b0/h/s/c;

.field private c:Lcom/ubix/ssp/ad/e/b0/h/s/a;

.field private d:Lcom/ubix/ssp/ad/e/b0/h/u/c;

.field private e:Lcom/ubix/ssp/ad/e/b0/h/t/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/h/u/d;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/b0/h/u/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/f$b;->d:Lcom/ubix/ssp/ad/e/b0/h/u/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/h/r;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/f$b;->a:Ljava/io/File;

    new-instance p1, Lcom/ubix/ssp/ad/e/b0/h/s/g;

    const-wide/32 v0, 0x20000000

    invoke-direct {p1, v0, v1}, Lcom/ubix/ssp/ad/e/b0/h/s/g;-><init>(J)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/f$b;->c:Lcom/ubix/ssp/ad/e/b0/h/s/a;

    new-instance p1, Lcom/ubix/ssp/ad/e/b0/h/s/f;

    invoke-direct {p1}, Lcom/ubix/ssp/ad/e/b0/h/s/f;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/f$b;->b:Lcom/ubix/ssp/ad/e/b0/h/s/c;

    new-instance p1, Lcom/ubix/ssp/ad/e/b0/h/t/a;

    invoke-direct {p1}, Lcom/ubix/ssp/ad/e/b0/h/t/a;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/f$b;->e:Lcom/ubix/ssp/ad/e/b0/h/t/b;

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/b0/h/f$b;)Lcom/ubix/ssp/ad/e/b0/h/c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/h/f$b;->b()Lcom/ubix/ssp/ad/e/b0/h/c;

    move-result-object p0

    return-object p0
.end method

.method private b()Lcom/ubix/ssp/ad/e/b0/h/c;
    .locals 6

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/h/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/h/f$b;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/h/f$b;->b:Lcom/ubix/ssp/ad/e/b0/h/s/c;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/b0/h/f$b;->c:Lcom/ubix/ssp/ad/e/b0/h/s/a;

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/b0/h/f$b;->d:Lcom/ubix/ssp/ad/e/b0/h/u/c;

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/b0/h/f$b;->e:Lcom/ubix/ssp/ad/e/b0/h/t/b;

    invoke-direct/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/b0/h/c;-><init>(Ljava/io/File;Lcom/ubix/ssp/ad/e/b0/h/s/c;Lcom/ubix/ssp/ad/e/b0/h/s/a;Lcom/ubix/ssp/ad/e/b0/h/u/c;Lcom/ubix/ssp/ad/e/b0/h/t/b;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/b0/h/s/c;)Lcom/ubix/ssp/ad/e/b0/h/f$b;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/h/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/b0/h/s/c;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/f$b;->b:Lcom/ubix/ssp/ad/e/b0/h/s/c;

    return-object p0
.end method

.method public a(Ljava/io/File;)Lcom/ubix/ssp/ad/e/b0/h/f$b;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/h/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/f$b;->a:Ljava/io/File;

    return-object p0
.end method

.method public a()Lcom/ubix/ssp/ad/e/b0/h/f;
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/h/f$b;->b()Lcom/ubix/ssp/ad/e/b0/h/c;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/h/f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/ubix/ssp/ad/e/b0/h/f;-><init>(Lcom/ubix/ssp/ad/e/b0/h/c;Lcom/ubix/ssp/ad/e/b0/h/f$a;)V

    return-object v1
.end method
