.class Lcom/anythink/network/toutiao/TTATInitManager$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdSdk$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATInitManager$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATInitManager$a;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATInitManager$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInitManager$a$a;->a:Lcom/anythink/network/toutiao/TTATInitManager$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager$a$a;->a:Lcom/anythink/network/toutiao/TTATInitManager$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATInitManager$a;->e:Lcom/anythink/network/toutiao/TTATInitManager;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {v0, v1, p1, p2}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Lcom/anythink/network/toutiao/TTATInitManager;ZLjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public success()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager$a$a;->a:Lcom/anythink/network/toutiao/TTATInitManager$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATInitManager$a;->e:Lcom/anythink/network/toutiao/TTATInitManager;

    .line 4
    .line 5
    new-instance v1, Lcom/anythink/network/toutiao/TTATInitManager$a$a$a;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATInitManager$a$a$a;-><init>(Lcom/anythink/network/toutiao/TTATInitManager$a$a;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Lcom/anythink/network/toutiao/TTATInitManager;Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
