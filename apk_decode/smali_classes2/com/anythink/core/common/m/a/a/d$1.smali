.class final Lcom/anythink/core/common/m/a/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/m/a/a/d;->b()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/m/a/a/d;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/m/a/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/core/common/m/a/a/d$1;->a:Lcom/anythink/core/common/m/a/a/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/m/a/a/d$1;->a:Lcom/anythink/core/common/m/a/a/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/core/common/m/a/a/d;->a(Lcom/anythink/core/common/m/a/a/d;)Lcom/anythink/core/common/n/b/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/anythink/core/common/n/b/k;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method
