.class public Lcom/ubix/ssp/ad/d/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field final synthetic h:Lcom/ubix/ssp/ad/d/l;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/d/l;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/l$a;->h:Lcom/ubix/ssp/ad/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/ubix/ssp/ad/d/l$a;->b:I

    const/4 p1, 0x5

    iput p1, p0, Lcom/ubix/ssp/ad/d/l$a;->d:I

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/d/l$a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l$a;->b:I

    return p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/d/l$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/d/l$a;->c:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/d/l$a;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l$a;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/d/l$a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l$a;->d:I

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/d/l$a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/d/l$a;->e:Z

    return p1
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/d/l$a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l$a;->f:I

    return p1
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/d/l$a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/d/l$a;->g:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l$a;->d:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l$a;->g:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l$a;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/d/l$a;->f:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/l$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l$a;->e:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/d/l$a;->a:Z

    return v0
.end method

.method public h()Z
    .locals 3

    iget v0, p0, Lcom/ubix/ssp/ad/d/l$a;->b:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
