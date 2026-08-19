.class public Lcom/meishu/sdk/core/utils/a0$a$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/a0$a;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/IOException;

.field public final synthetic b:Lcom/meishu/sdk/core/utils/a0$a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/a0$a;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/a0$a$a;->b:Lcom/meishu/sdk/core/utils/a0$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/a0$a$a;->a:Ljava/io/IOException;

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
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/a0$a$a;->b:Lcom/meishu/sdk/core/utils/a0$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/a0$a;->a:Lcom/meishu/sdk/core/utils/z;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/a0$a$a;->a:Ljava/io/IOException;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/utils/z;->onFailure(Ljava/io/IOException;)V

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
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/a0$a$a;->a:Ljava/io/IOException;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void

    .line 35
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
