.class final Lcom/kwad/components/ad/c/d/c$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/e/d/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/c/d/c$3;->a(IILcom/kwad/sdk/core/response/model/AdTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field final synthetic dj:I

.field final synthetic dk:Lcom/kwad/components/ad/c/d/c$3;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/c/d/c$3;ILcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/d/c$3$1;->dk:Lcom/kwad/components/ad/c/d/c$3;

    .line 2
    .line 3
    iput p2, p0, Lcom/kwad/components/ad/c/d/c$3$1;->dj:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/c/d/c$3$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 3

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
    const-string v2, "101"

    .line 14
    .line 15
    iput-object v2, v1, Lcom/kwad/sdk/core/adlog/a$a;->templateId:Ljava/lang/String;

    .line 16
    .line 17
    iget v1, p0, Lcom/kwad/components/ad/c/d/c$3$1;->dj:I

    .line 18
    .line 19
    iput v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->nm:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/kwad/components/ad/c/d/c$3$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {v1, v0, v2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$3$1;->dk:Lcom/kwad/components/ad/c/d/c$3;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/kwad/components/ad/c/d/c;->i(Lcom/kwad/components/ad/c/d/c;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$3$1;->dk:Lcom/kwad/components/ad/c/d/c$3;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/kwad/components/ad/c/d/c$3;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-static {v0, v1}, Lcom/kwad/components/ad/c/d/c;->e(Lcom/kwad/components/ad/c/d/c;Z)Z

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$3$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/kwad/components/ad/c/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v2, v1

    .line 57
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/kwad/components/ad/c/c/c;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
