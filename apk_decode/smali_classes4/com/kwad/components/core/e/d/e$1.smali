.class final Lcom/kwad/components/core/e/d/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/download/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/e/d/e;->a(Lcom/kwad/components/core/e/d/a$a;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Rx:Lcom/kwad/components/core/e/d/a$a;

.field final synthetic Ry:I

.field final synthetic Rz:Ljava/lang/String;

.field final synthetic cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field final synthetic wB:Lcom/kwad/sdk/core/response/model/AdInfo;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/e/d/a$a;Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;Lcom/kwad/sdk/core/response/model/AdInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/e/d/e$1;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/e/d/e$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    iput p3, p0, Lcom/kwad/components/core/e/d/e$1;->Ry:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/kwad/components/core/e/d/e$1;->Rz:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/kwad/components/core/e/d/e$1;->wB:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final aT(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kwad/components/core/e/d/a$a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lcom/kwad/components/core/e/d/a$a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/kwad/components/core/e/d/a$a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kwad/components/core/e/d/a$a;->pP()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v2

    .line 28
    :goto_0
    iput v0, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLG:I

    .line 29
    .line 30
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/kwad/components/core/e/d/a$a;->qa()Lcom/kwad/sdk/core/adlog/c/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/kwad/components/core/e/d/e$1;->qH()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iget-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 52
    .line 53
    :cond_2
    iget-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 54
    .line 55
    iput-boolean v2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLr:Z

    .line 56
    .line 57
    :cond_3
    iput p1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMv:I

    .line 58
    .line 59
    iget-object p1, p0, Lcom/kwad/components/core/e/d/e$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 60
    .line 61
    const-string v1, ""

    .line 62
    .line 63
    iget v2, p0, Lcom/kwad/components/core/e/d/e$1;->Ry:I

    .line 64
    .line 65
    invoke-static {p1, v1, v2, v0}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;ILcom/kwad/sdk/core/adlog/c/a;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/kwad/components/core/e/d/e$1;->qH()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 21
    .line 22
    iput-boolean v2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLr:Z

    .line 23
    .line 24
    :cond_0
    iget-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/kwad/components/core/e/d/e$1;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/kwad/components/core/e/d/a$a;->pP()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    :cond_1
    iput v2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLG:I

    .line 36
    .line 37
    iget-object v1, p0, Lcom/kwad/components/core/e/d/e$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 38
    .line 39
    const-string v2, ""

    .line 40
    .line 41
    iget v3, p0, Lcom/kwad/components/core/e/d/e$1;->Ry:I

    .line 42
    .line 43
    invoke-static {v1, v2, v3, v0}, Lcom/kwad/sdk/core/adlog/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;ILcom/kwad/sdk/core/adlog/c/a;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/kwad/components/core/e/d/e$1;->Rz:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->y(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/commercial/e/a;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final onPreStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kwad/components/core/e/d/a$a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lcom/kwad/components/core/e/d/a$a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/kwad/components/core/e/d/a$a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kwad/components/core/e/d/a$a;->pP()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v2

    .line 28
    :goto_0
    iput v0, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLG:I

    .line 29
    .line 30
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/kwad/components/core/e/d/a$a;->qa()Lcom/kwad/sdk/core/adlog/c/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/kwad/components/core/e/d/e$1;->qH()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iget-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 52
    .line 53
    :cond_2
    iget-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 54
    .line 55
    iput-boolean v2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLr:Z

    .line 56
    .line 57
    :cond_3
    iget-object v1, p0, Lcom/kwad/components/core/e/d/e$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 58
    .line 59
    const-string v2, ""

    .line 60
    .line 61
    iget v3, p0, Lcom/kwad/components/core/e/d/e$1;->Ry:I

    .line 62
    .line 63
    invoke-static {v1, v2, v3, v0}, Lcom/kwad/sdk/core/adlog/c;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;ILcom/kwad/sdk/core/adlog/c/a;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/kwad/components/core/e/d/e$1;->Rz:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/kwad/sdk/commercial/e/a;->o(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/core/proxy/launchdialog/e;->vJ()Lcom/kwad/components/core/proxy/launchdialog/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/core/e/d/e$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/proxy/launchdialog/e;->ba(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/kwad/components/core/e/d/e;->qF()Lcom/kwad/components/core/e/d/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/kwad/components/core/e/d/e$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/b;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/kwad/components/core/e/d/e;->qF()Lcom/kwad/components/core/e/d/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/kwad/sdk/core/c/b;->a(Lcom/kwad/sdk/core/c/c;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->Rz:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/kwad/components/core/e/d/e;->as(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/kwad/sdk/core/adlog/c;->aLJ:Lorg/json/JSONObject;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/kwad/components/core/e/d/e$1;->Rz:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/kwad/sdk/commercial/e/a;->q(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onSuccess()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kwad/components/core/e/d/a$a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lcom/kwad/components/core/e/d/a$a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/kwad/components/core/e/d/a$a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kwad/components/core/e/d/a$a;->pP()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v2

    .line 28
    :goto_0
    iput v0, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLG:I

    .line 29
    .line 30
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/kwad/components/core/e/d/a$a;->qa()Lcom/kwad/sdk/core/adlog/c/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/kwad/components/core/e/d/e$1;->qH()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iget-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    new-instance v1, Lcom/kwad/sdk/core/adlog/a$a;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 52
    .line 53
    :cond_2
    iget-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 54
    .line 55
    iput-boolean v2, v1, Lcom/kwad/sdk/core/adlog/a$a;->aLr:Z

    .line 56
    .line 57
    :cond_3
    iget-object v1, p0, Lcom/kwad/components/core/e/d/e$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/kwad/components/core/e/d/e$1;->Rz:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v2}, Lcom/kwad/sdk/commercial/e/a;->r(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/kwad/components/core/e/d/e$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 65
    .line 66
    const-string v2, ""

    .line 67
    .line 68
    iget v3, p0, Lcom/kwad/components/core/e/d/e$1;->Ry:I

    .line 69
    .line 70
    invoke-static {v1, v2, v3, v0}, Lcom/kwad/sdk/core/adlog/c;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;ILcom/kwad/sdk/core/adlog/c/a;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/kwad/components/core/e/d/e$1;->Rz:Ljava/lang/String;

    .line 76
    .line 77
    iget v2, p0, Lcom/kwad/components/core/e/d/e$1;->Ry:I

    .line 78
    .line 79
    iget-object v3, p0, Lcom/kwad/components/core/e/d/e$1;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 80
    .line 81
    iget-object v3, v3, Lcom/kwad/components/core/e/d/a$a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 82
    .line 83
    iget v3, v3, Lcom/kwad/sdk/core/adlog/a$a;->aLG:I

    .line 84
    .line 85
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/components/core/e/d/e;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;II)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final qG()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/e/d/e$1;->Rz:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/commercial/e/a;->p(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final qH()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$1;->wB:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cr(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
