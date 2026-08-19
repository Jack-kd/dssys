.class public Lcom/meishu/sdk/core/utils/a0$e$b;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/a0$e;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/utils/q0;

.field public final synthetic b:Lcom/meishu/sdk/core/utils/a0$e;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/a0$e;Lcom/meishu/sdk/core/utils/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/a0$e$b;->b:Lcom/meishu/sdk/core/utils/a0$e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/a0$e$b;->a:Lcom/meishu/sdk/core/utils/q0;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/a0$e$b;->b:Lcom/meishu/sdk/core/utils/a0$e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/a0$e;->a:Lcom/meishu/sdk/core/utils/z;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/a0$e$b;->a:Lcom/meishu/sdk/core/utils/q0;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/utils/z;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
