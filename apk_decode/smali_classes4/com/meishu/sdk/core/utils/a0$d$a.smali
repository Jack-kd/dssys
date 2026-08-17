.class public Lcom/meishu/sdk/core/utils/a0$d$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/a0$d;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/IOException;

.field public final synthetic b:Lcom/meishu/sdk/core/utils/a0$d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/a0$d;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/a0$d$a;->b:Lcom/meishu/sdk/core/utils/a0$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/a0$d$a;->a:Ljava/io/IOException;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/a0$d$a;->b:Lcom/meishu/sdk/core/utils/a0$d;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/a0$d;->a:Lcom/meishu/sdk/core/utils/y;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/a0$d$a;->a:Ljava/io/IOException;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/utils/y;->onFailure(Ljava/io/IOException;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->ERROR_REPORT_URL:[Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    aget-object v0, v0, v1

    .line 19
    .line 20
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->NETWORK_ERROR:Ljava/lang/Integer;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/a0$d$a;->a:Ljava/io/IOException;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
