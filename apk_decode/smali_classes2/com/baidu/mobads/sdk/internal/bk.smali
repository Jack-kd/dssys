.class Lcom/baidu/mobads/sdk/internal/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/internal/aa$a;


# instance fields
.field final synthetic c:Lcom/baidu/mobads/sdk/internal/bj;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/internal/bj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/bk;->c:Lcom/baidu/mobads/sdk/internal/bj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bk;->c:Lcom/baidu/mobads/sdk/internal/bj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/baidu/mobads/sdk/internal/bj;->k:Lcom/baidu/mobads/sdk/internal/bv;

    .line 4
    .line 5
    const-string v1, "XAbstractProdTemplate"

    .line 6
    .line 7
    const-string v2, "AbstractProdTemplate,load-dex\u8bf7\u6c42\uff0c\u56de\u8c03\u5931\u8d25"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobads/sdk/internal/bv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bk;->c:Lcom/baidu/mobads/sdk/internal/bj;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/internal/bj;->i()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bk;->c:Lcom/baidu/mobads/sdk/internal/bj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/baidu/mobads/sdk/internal/bj;->k:Lcom/baidu/mobads/sdk/internal/bv;

    .line 4
    .line 5
    const-string v1, "XAbstractProdTemplate"

    .line 6
    .line 7
    const-string v2, "AbstractProdTemplate,load-dex\u8bf7\u6c42\uff0c\u56de\u8c03\u6210\u529f"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobads/sdk/internal/bv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bk;->c:Lcom/baidu/mobads/sdk/internal/bj;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/internal/bj;->h()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
