.class public Lcom/meishu/sdk/core/utils/a0$e$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/a0$e;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/IOException;

.field public final synthetic b:Lcom/meishu/sdk/core/utils/a0$e;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/a0$e;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/a0$e$a;->b:Lcom/meishu/sdk/core/utils/a0$e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/a0$e$a;->a:Ljava/io/IOException;

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
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/a0$e$a;->b:Lcom/meishu/sdk/core/utils/a0$e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/a0$e;->a:Lcom/meishu/sdk/core/utils/z;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/a0$e$a;->a:Ljava/io/IOException;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/utils/z;->onFailure(Ljava/io/IOException;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
