.class Lcom/anythink/network/sigmob/SigmobATInitManager$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATInitManager$b;->onStartFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/network/sigmob/SigmobATInitManager$b;


# direct methods
.method public constructor <init>(Lcom/anythink/network/sigmob/SigmobATInitManager$b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$b$b;->b:Lcom/anythink/network/sigmob/SigmobATInitManager$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$b$b;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$b$b;->b:Lcom/anythink/network/sigmob/SigmobATInitManager$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATInitManager$b;->b:Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$b$b;->a:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v2, v1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
