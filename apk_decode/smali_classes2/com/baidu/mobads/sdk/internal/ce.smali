.class Lcom/baidu/mobads/sdk/internal/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/internal/cp$a;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/sdk/internal/cb;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/internal/cb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/ce;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/ce;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/internal/cb;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/ce;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/cb;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/bv;->a(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
