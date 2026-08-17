.class public final Lcom/kwad/components/core/innerEc/local/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aaE:Lcom/kwad/components/core/innerEc/local/CancelInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/local/CancelInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/local/CancelInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kwad/components/core/innerEc/local/a;->aaE:Lcom/kwad/components/core/innerEc/local/CancelInfo;

    .line 7
    .line 8
    return-void
.end method

.method private static aO(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/b;->ey(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/local/a;->bo(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    sput-boolean p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->isInnerEcCancelDowngrade:Z

    .line 12
    .line 13
    return-void
.end method

.method public static aQ(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onAuthSuccess: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "LoginLocalCounter"

    .line 16
    .line 17
    invoke-static {v0, p0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lcom/kwad/components/core/innerEc/local/a;->aaE:Lcom/kwad/components/core/innerEc/local/CancelInfo;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/kwad/components/core/innerEc/local/CancelInfo;->reset()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static bo(I)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "checkEnableInnerEc maxCount: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "LoginLocalCounter"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-gtz p0, :cond_0

    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    sget-object v1, Lcom/kwad/components/core/innerEc/local/a;->aaE:Lcom/kwad/components/core/innerEc/local/CancelInfo;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/kwad/components/core/innerEc/local/CancelInfo;->getCancelCount()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ge v1, p0, :cond_1

    .line 31
    .line 32
    return v0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public static f(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onAuthFail: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "LoginLocalCounter"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lcom/kwad/components/core/innerEc/local/a;->aaE:Lcom/kwad/components/core/innerEc/local/CancelInfo;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/kwad/components/core/innerEc/local/CancelInfo;->checkAndAdd()V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/local/a;->aO(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static g(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onAuthCancel: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "LoginLocalCounter"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lcom/kwad/components/core/innerEc/local/a;->aaE:Lcom/kwad/components/core/innerEc/local/CancelInfo;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/kwad/components/core/innerEc/local/CancelInfo;->checkAndAdd()V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/local/a;->aO(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static getCancelCount()I
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/core/innerEc/local/a;->aaE:Lcom/kwad/components/core/innerEc/local/CancelInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/local/CancelInfo;->getCancelCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
