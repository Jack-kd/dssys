.class public Lcom/meishu/sdk/core/utils/a0$b$b;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/a0$b;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokhttp3/Response;

.field public final synthetic b:Lcom/meishu/sdk/core/utils/a0$b;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/a0$b;Lokhttp3/Response;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/a0$b$b;->b:Lcom/meishu/sdk/core/utils/a0$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/a0$b$b;->a:Lokhttp3/Response;

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
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/a0$b$b;->a:Lokhttp3/Response;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/a0$b$b;->b:Lcom/meishu/sdk/core/utils/a0$b;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/a0$b;->a:Lcom/meishu/sdk/core/utils/a0$i;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/utils/a0$i;->success()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/a0$b$b;->b:Lcom/meishu/sdk/core/utils/a0$b;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/a0$b;->a:Lcom/meishu/sdk/core/utils/a0$i;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/meishu/sdk/core/utils/a0$i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/a0$b$b;->b:Lcom/meishu/sdk/core/utils/a0$b;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/a0$b;->a:Lcom/meishu/sdk/core/utils/a0$i;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/meishu/sdk/core/utils/a0$i;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    .line 42
    .line 43
    :catch_1
    :cond_1
    return-void
.end method
