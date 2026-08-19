.class Lcom/anythink/network/sigmob/SigmobATInitManager$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATInitManager$b;->onStartSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/sigmob/SigmobATInitManager$b;


# direct methods
.method public constructor <init>(Lcom/anythink/network/sigmob/SigmobATInitManager$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$b$a;->a:Lcom/anythink/network/sigmob/SigmobATInitManager$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$b$a;->a:Lcom/anythink/network/sigmob/SigmobATInitManager$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATInitManager$b;->b:Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, v2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
