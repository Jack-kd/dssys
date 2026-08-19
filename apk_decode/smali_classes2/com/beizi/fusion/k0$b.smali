.class Lcom/beizi/fusion/k0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/beizi/fusion/dm$f;

.field private c:Lcom/beizi/fusion/dm$b;

.field private d:Lcom/beizi/fusion/dm$i;

.field private e:Lcom/beizi/fusion/dm$d;

.field private f:Lcom/beizi/fusion/dm$g;

.field private g:Lcom/beizi/fusion/dm$a;

.field private h:Lcom/beizi/fusion/dm$h;

.field private i:Lcom/beizi/fusion/dm$c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/k0$b;->a:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/beizi/fusion/k0$b;->a()Lcom/beizi/fusion/k0$b;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/beizi/fusion/k0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/k0$b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a()Lcom/beizi/fusion/k0$b;
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/beizi/fusion/k0$b;->c()Lcom/beizi/fusion/k0$b;

    .line 9
    invoke-direct {p0}, Lcom/beizi/fusion/k0$b;->e()Lcom/beizi/fusion/k0$b;

    .line 10
    invoke-direct {p0}, Lcom/beizi/fusion/k0$b;->f()Lcom/beizi/fusion/k0$b;

    .line 11
    invoke-direct {p0}, Lcom/beizi/fusion/k0$b;->b()Lcom/beizi/fusion/k0$b;

    .line 12
    invoke-direct {p0}, Lcom/beizi/fusion/k0$b;->d()Lcom/beizi/fusion/k0$b;

    .line 13
    invoke-static {}, Lcom/beizi/fusion/h;->a()Lcom/beizi/fusion/h;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/k0$b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x9;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beizi/fusion/g;

    .line 14
    invoke-virtual {v0}, Lcom/beizi/fusion/g;->b()Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/InitTraceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-direct {p0, v0}, Lcom/beizi/fusion/k0$b;->a(Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/InitTraceModel;)Lcom/beizi/fusion/k0$b;

    :cond_0
    return-object p0
.end method

.method private a(Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;)Lcom/beizi/fusion/k0$b;
    .locals 1

    .line 5
    new-instance v0, Lcom/beizi/fusion/dm$a;

    invoke-direct {v0, p1}, Lcom/beizi/fusion/dm$a;-><init>(Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;)V

    iput-object v0, p0, Lcom/beizi/fusion/k0$b;->g:Lcom/beizi/fusion/dm$a;

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/k0$b;->f:Lcom/beizi/fusion/dm$g;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getStrategyMD5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/dm$g;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private a(Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/InitTraceModel;)Lcom/beizi/fusion/k0$b;
    .locals 5

    .line 4
    new-instance v0, Lcom/beizi/fusion/dm$h;

    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/InitTraceModel;->getStartID()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/InitTraceModel;->getRoundTripTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/beizi/fusion/dm$h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/beizi/fusion/k0$b;->h:Lcom/beizi/fusion/dm$h;

    return-object p0
.end method

.method public static synthetic a(Lcom/beizi/fusion/k0$b;Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;)Lcom/beizi/fusion/k0$b;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/k0$b;->a(Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;)Lcom/beizi/fusion/k0$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/beizi/fusion/k0$b;Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/InitTraceModel;)Lcom/beizi/fusion/k0$b;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/k0$b;->a(Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/InitTraceModel;)Lcom/beizi/fusion/k0$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/beizi/fusion/k0$b;Ljava/lang/String;)Lcom/beizi/fusion/k0$b;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/beizi/fusion/k0$b;->a(Ljava/lang/String;)Lcom/beizi/fusion/k0$b;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/beizi/fusion/k0$b;
    .locals 1

    .line 16
    new-instance v0, Lcom/beizi/fusion/dm$c;

    invoke-direct {v0, p1}, Lcom/beizi/fusion/dm$c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/beizi/fusion/k0$b;->i:Lcom/beizi/fusion/dm$c;

    return-object p0
.end method

.method private b()Lcom/beizi/fusion/k0$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/beizi/fusion/dm$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/beizi/fusion/k0$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/beizi/fusion/dm$b;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/beizi/fusion/k0$b;->c:Lcom/beizi/fusion/dm$b;

    .line 9
    .line 10
    return-object p0
.end method

.method private c()Lcom/beizi/fusion/k0$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/beizi/fusion/dm$d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/beizi/fusion/k0$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/beizi/fusion/dm$d;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/beizi/fusion/k0$b;->e:Lcom/beizi/fusion/dm$d;

    .line 9
    .line 10
    return-object p0
.end method

.method private d()Lcom/beizi/fusion/k0$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/beizi/fusion/o;->a()Lcom/beizi/fusion/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/k0$b;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x9;->b(Landroid/content/Context;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/beizi/fusion/n;

    .line 12
    .line 13
    new-instance v1, Lcom/beizi/fusion/dm$f;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/n;->b()Lcom/beizi/fusion/ac;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v0}, Lcom/beizi/fusion/dm$f;-><init>(Lcom/beizi/fusion/ac;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/beizi/fusion/k0$b;->b:Lcom/beizi/fusion/dm$f;

    .line 23
    .line 24
    return-object p0
.end method

.method private e()Lcom/beizi/fusion/k0$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/beizi/fusion/h;->a()Lcom/beizi/fusion/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/k0$b;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x9;->b(Landroid/content/Context;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/beizi/fusion/g;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/g;->a(Z)Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/cfg/root/ConfigResponseModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v1, Lcom/beizi/fusion/dm$g;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/beizi/fusion/dm$g;-><init>(Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/cfg/root/ConfigResponseModel;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/beizi/fusion/k0$b;->f:Lcom/beizi/fusion/dm$g;

    .line 28
    .line 29
    :cond_0
    return-object p0
.end method

.method private f()Lcom/beizi/fusion/k0$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/beizi/fusion/h;->a()Lcom/beizi/fusion/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/k0$b;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x9;->b(Landroid/content/Context;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/beizi/fusion/g;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/g;->a()Lcom/beizi/fusion/v;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v1, Lcom/beizi/fusion/dm$i;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lcom/beizi/fusion/dm$i;-><init>(Lcom/beizi/fusion/v;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/beizi/fusion/k0$b;->d:Lcom/beizi/fusion/dm$i;

    .line 27
    .line 28
    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/asnp/common/analyse/model/IStringEventEnum;)Lcom/beizi/fusion/asnp/common/analyse/model/IBaseEventReportModel;
    .locals 1

    .line 17
    new-instance v0, Lcom/beizi/fusion/dm;

    invoke-direct {v0, p1}, Lcom/beizi/fusion/dm;-><init>(Lcom/beizi/fusion/asnp/common/analyse/model/IStringEventEnum;)V

    .line 18
    iget-object p1, p0, Lcom/beizi/fusion/k0$b;->g:Lcom/beizi/fusion/dm$a;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/dm;->a(Lcom/beizi/fusion/dm$a;)V

    .line 19
    iget-object p1, p0, Lcom/beizi/fusion/k0$b;->c:Lcom/beizi/fusion/dm$b;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/dm;->a(Lcom/beizi/fusion/dm$b;)V

    .line 20
    iget-object p1, p0, Lcom/beizi/fusion/k0$b;->e:Lcom/beizi/fusion/dm$d;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/dm;->a(Lcom/beizi/fusion/dm$d;)V

    const/4 p1, 0x0

    .line 21
    invoke-virtual {v0, p1}, Lcom/beizi/fusion/dm;->a(Lcom/beizi/fusion/dm$e;)V

    .line 22
    iget-object p1, p0, Lcom/beizi/fusion/k0$b;->b:Lcom/beizi/fusion/dm$f;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/dm;->a(Lcom/beizi/fusion/dm$f;)V

    .line 23
    iget-object p1, p0, Lcom/beizi/fusion/k0$b;->f:Lcom/beizi/fusion/dm$g;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/dm;->a(Lcom/beizi/fusion/dm$g;)V

    .line 24
    iget-object p1, p0, Lcom/beizi/fusion/k0$b;->d:Lcom/beizi/fusion/dm$i;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/dm;->a(Lcom/beizi/fusion/dm$i;)V

    .line 25
    iget-object p1, p0, Lcom/beizi/fusion/k0$b;->h:Lcom/beizi/fusion/dm$h;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/dm;->a(Lcom/beizi/fusion/dm$h;)V

    .line 26
    iget-object p1, p0, Lcom/beizi/fusion/k0$b;->i:Lcom/beizi/fusion/dm$c;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/dm;->a(Lcom/beizi/fusion/dm$c;)V

    return-object v0
.end method
