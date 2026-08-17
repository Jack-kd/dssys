.class Lcom/baidu/mobads/sdk/internal/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/internal/ck$a;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/sdk/internal/bx;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/internal/bx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/by;->a:Lcom/baidu/mobads/sdk/internal/bx;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobads/sdk/internal/bz;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/by;->a:Lcom/baidu/mobads/sdk/internal/bx;

    .line 2
    .line 3
    const-string v1, "OK"

    .line 4
    .line 5
    const-string v2, "download apk successfully, downloader exit"

    .line 6
    .line 7
    invoke-static {v0, v1, p1, v2}, Lcom/baidu/mobads/sdk/internal/bx;->a(Lcom/baidu/mobads/sdk/internal/bx;Ljava/lang/String;Lcom/baidu/mobads/sdk/internal/bz;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/bx;->a(Lcom/baidu/mobads/sdk/internal/bx;)Lcom/baidu/mobads/sdk/internal/bx;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public b(Lcom/baidu/mobads/sdk/internal/bz;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/by;->a:Lcom/baidu/mobads/sdk/internal/bx;

    .line 2
    .line 3
    const-string v1, "ERROR"

    .line 4
    .line 5
    const-string v2, "downloadApk failed"

    .line 6
    .line 7
    invoke-static {v0, v1, p1, v2}, Lcom/baidu/mobads/sdk/internal/bx;->a(Lcom/baidu/mobads/sdk/internal/bx;Ljava/lang/String;Lcom/baidu/mobads/sdk/internal/bz;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
