.class public Lcom/meishu/sdk/core/utils/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/a0$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/utils/a0$i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/a0$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/a0$b;->a:Lcom/meishu/sdk/core/utils/a0$i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/meishu/sdk/core/utils/a0$b$a;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/meishu/sdk/core/utils/a0$b$a;-><init>(Lcom/meishu/sdk/core/utils/a0$b;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/meishu/sdk/core/utils/a0$b$b;

    .line 2
    .line 3
    invoke-direct {p1, p0, p2}, Lcom/meishu/sdk/core/utils/a0$b$b;-><init>(Lcom/meishu/sdk/core/utils/a0$b;Lokhttp3/Response;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
