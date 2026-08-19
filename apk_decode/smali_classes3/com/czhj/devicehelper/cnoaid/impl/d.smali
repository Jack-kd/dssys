.class Lcom/czhj/devicehelper/cnoaid/impl/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/devicehelper/cnoaid/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/czhj/devicehelper/cnoaid/c;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/czhj/devicehelper/cnoaid/f;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Lcom/czhj/devicehelper/cnoaid/f;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/czhj/devicehelper/cnoaid/c;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    return v0
.end method
