.class Lcom/octopus/ad/internal/f;
.super Lcom/octopus/ad/internal/s;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/octopus/ad/internal/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/octopus/ad/internal/b/a;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/s;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "OctopusAd_Time"

    .line 5
    .line 6
    const-string v1, "AdViewRequestManagerImpl \u5f00\u59cb"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/octopus/ad/internal/f;->c:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method private a(Lcom/octopus/ad/internal/e/a;Lcom/octopus/ad/internal/b/f;)V
    .locals 3

    .line 25
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/e/a;->setServerResponse(Lcom/octopus/ad/internal/b/f;)V

    .line 26
    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/a;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/d;->a(Z)V

    .line 27
    new-instance v0, Lcom/octopus/ad/internal/f$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/octopus/ad/internal/f$1;-><init>(Lcom/octopus/ad/internal/f;Lcom/octopus/ad/internal/e/a;Lcom/octopus/ad/internal/b/f;)V

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/f;->a(Lcom/octopus/ad/internal/b/b;)V

    .line 28
    new-instance v0, Lcom/octopus/ad/internal/e/b;

    invoke-direct {v0, p1}, Lcom/octopus/ad/internal/e/b;-><init>(Lcom/octopus/ad/internal/e/a;)V

    .line 29
    invoke-virtual {v0, p2}, Lcom/octopus/ad/internal/e/b;->a(Lcom/octopus/ad/internal/b/f;)V

    .line 30
    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->a()Lcom/octopus/ad/a/c$b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->a()Lcom/octopus/ad/a/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/a/c$b;->i()Lcom/octopus/ad/model/ComplianceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->p()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->p()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44200000    # 640.0f

    div-float/2addr v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    :goto_0
    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->a()Lcom/octopus/ad/a/c$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/octopus/ad/a/c$b;->i()Lcom/octopus/ad/model/ComplianceInfo;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/model/ComplianceInfo;F)V

    .line 33
    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->an()Lcom/octopus/ad/model/AdLogoInfo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->p()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/model/AdLogoInfo;I)V

    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->am()Lcom/octopus/ad/model/AdLogoInfo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->an()Lcom/octopus/ad/model/AdLogoInfo;

    move-result-object v2

    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->p()I

    move-result p2

    invoke-virtual {p1, v1, v2, p2}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/model/AdLogoInfo;Lcom/octopus/ad/model/AdLogoInfo;I)V

    .line 35
    :goto_1
    invoke-interface {p1}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    move-result-object p2

    sget-object v1, Lcom/octopus/ad/internal/p;->c:Lcom/octopus/ad/internal/p;

    if-eq p2, v1, :cond_3

    invoke-interface {p1}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    move-result-object p2

    sget-object v1, Lcom/octopus/ad/internal/p;->d:Lcom/octopus/ad/internal/p;

    if-eq p2, v1, :cond_3

    invoke-interface {p1}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    move-result-object p2

    sget-object v1, Lcom/octopus/ad/internal/p;->e:Lcom/octopus/ad/internal/p;

    if-ne p2, v1, :cond_2

    goto :goto_2

    .line 36
    :cond_2
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->c()Lcom/octopus/ad/internal/e/c;

    move-result-object v0

    .line 37
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/octopus/ad/internal/b;->a(Lcom/octopus/ad/internal/e/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 38
    :goto_3
    const-string p2, "OctopusAd"

    const-string v0, "An Exception Caught"

    invoke-static {p2, v0, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    sget-object p2, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception initializing the view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x13881

    .line 40
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/f;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/e/a;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/octopus/ad/internal/f;->d()Lcom/octopus/ad/internal/b/a$a;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    const v1, 0x13885

    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/b;->a(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Lcom/octopus/ad/internal/b/a;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/f;->d()Lcom/octopus/ad/internal/b/a$a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/octopus/ad/internal/b/a;-><init>(Lcom/octopus/ad/internal/b/a$a;)V

    iput-object v1, p0, Lcom/octopus/ad/internal/f;->b:Lcom/octopus/ad/internal/b/a;

    .line 6
    const-string v1, "OctopusAd_Time"

    const-string v2, "new AdRequestImpl"

    invoke-static {v1, v2}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/octopus/ad/internal/s;->e()V

    .line 8
    iget-object v1, p0, Lcom/octopus/ad/internal/f;->b:Lcom/octopus/ad/internal/b/a;

    invoke-virtual {v1, p0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/e;)V

    .line 9
    iget-object v1, p0, Lcom/octopus/ad/internal/f;->b:Lcom/octopus/ad/internal/b/a;

    iget-object v2, p0, Lcom/octopus/ad/internal/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/b/a;->a(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 11
    :goto_0
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 12
    :cond_2
    :goto_1
    sget-object v0, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    const-string v1, "Before execute request manager, you should set ad request!"

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 13
    invoke-virtual {p0}, Lcom/octopus/ad/internal/s;->f()V

    .line 14
    iget-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/e/a;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 16
    const-string v1, "OctopusAd_Time"

    const-string v2, "send onAdFailedToLoad"

    invoke-static {v1, v2}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/b;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/b/b;)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/octopus/ad/internal/s;->f()V

    .line 42
    iget-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/e/a;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/b;->a(Lcom/octopus/ad/internal/b/b;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/b/f;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/e/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const-string v1, "OctopusAd_Time"

    const-string v2, "handleStandardAds"

    invoke-static {v1, v2}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, v0, p1}, Lcom/octopus/ad/internal/f;->a(Lcom/octopus/ad/internal/e/a;Lcom/octopus/ad/internal/b/f;)V

    return-void

    .line 22
    :cond_0
    sget-object p1, Lcom/octopus/ad/internal/c/f;->e:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->response_no_ads:I

    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/octopus/ad/internal/c/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p1

    const v0, 0x138e4

    invoke-interface {p1, v0}, Lcom/octopus/ad/internal/b;->a(I)V

    :cond_1
    return-void
.end method

.method public b()Lcom/octopus/ad/internal/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/octopus/ad/internal/e/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdParameters()Lcom/octopus/ad/internal/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/f;->b:Lcom/octopus/ad/internal/b/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/octopus/ad/internal/f;->b:Lcom/octopus/ad/internal/b/a;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public d()Lcom/octopus/ad/internal/b/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/octopus/ad/internal/e/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdRequest()Lcom/octopus/ad/internal/b/a$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method
