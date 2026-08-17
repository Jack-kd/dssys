.class public Lcom/meishu/sdk/meishu_ad/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/a;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/c0;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/c0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 3
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/c0;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    iput v0, p1, Lcom/meishu/sdk/meishu_ad/v;->w:I

    .line 5
    .line 6
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/c0;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 7
    .line 8
    iget p1, p1, Lcom/meishu/sdk/meishu_ad/v;->u:I

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/c0;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 13
    .line 14
    iget p1, p1, Lcom/meishu/sdk/meishu_ad/v;->v:I

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/c0;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/c0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 21
    .line 22
    const-string v1, "def isnull"

    .line 23
    .line 24
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/core/domain/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [B

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/c0;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput v1, v0, Lcom/meishu/sdk/meishu_ad/v;->w:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/c0;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 23
    .line 24
    iput-object p1, v0, Lcom/meishu/sdk/meishu_ad/v;->x:[B

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/c0;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    iput v0, p1, Lcom/meishu/sdk/meishu_ad/v;->w:I

    .line 31
    .line 32
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/c0;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 33
    .line 34
    iget p1, p1, Lcom/meishu/sdk/meishu_ad/v;->u:I

    .line 35
    .line 36
    if-ne p1, v0, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/c0;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 39
    .line 40
    iget p1, p1, Lcom/meishu/sdk/meishu_ad/v;->v:I

    .line 41
    .line 42
    if-ne p1, v0, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/c0;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/c0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 47
    .line 48
    const-string v1, "def isnull"

    .line 49
    .line 50
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method
