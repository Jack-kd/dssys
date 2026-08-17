.class Lcom/czhj/devicehelper/msaoaId/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/devicehelper/msaoaId/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "OnSupport"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/czhj/devicehelper/msaoaId/a;->a()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "getOAID"

    invoke-virtual {p2, v0, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-virtual {p2, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/czhj/devicehelper/msaoaId/a;->c(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_0
    aget-object p3, p3, v1

    invoke-virtual {p2, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/czhj/devicehelper/msaoaId/a;->b()Lcom/czhj/devicehelper/msaoaId/a$a;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/czhj/devicehelper/msaoaId/a;->b()Lcom/czhj/devicehelper/msaoaId/a$a;

    move-result-object p2

    invoke-static {}, Lcom/czhj/devicehelper/msaoaId/a;->c()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/czhj/devicehelper/msaoaId/a$a;->a(Ljava/lang/String;)V

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MdidSdkHelper oaid:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/czhj/devicehelper/msaoaId/a;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    invoke-static {}, Lcom/czhj/devicehelper/msaoaId/a;->b()Lcom/czhj/devicehelper/msaoaId/a$a;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/czhj/devicehelper/msaoaId/a;->b()Lcom/czhj/devicehelper/msaoaId/a$a;

    move-result-object p2

    invoke-static {}, Lcom/czhj/devicehelper/msaoaId/a;->c()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/czhj/devicehelper/msaoaId/a$a;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object p1
.end method
