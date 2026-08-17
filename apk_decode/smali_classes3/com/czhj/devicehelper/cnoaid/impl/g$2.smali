.class Lcom/czhj/devicehelper/cnoaid/impl/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/devicehelper/cnoaid/impl/g;->a(Lcom/czhj/devicehelper/cnoaid/c;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/czhj/devicehelper/cnoaid/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/czhj/devicehelper/cnoaid/impl/g;


# direct methods
.method public constructor <init>(Lcom/czhj/devicehelper/cnoaid/impl/g;Lcom/czhj/devicehelper/cnoaid/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/devicehelper/cnoaid/impl/g$2;->c:Lcom/czhj/devicehelper/cnoaid/impl/g;

    iput-object p2, p0, Lcom/czhj/devicehelper/cnoaid/impl/g$2;->a:Lcom/czhj/devicehelper/cnoaid/c;

    iput-object p3, p0, Lcom/czhj/devicehelper/cnoaid/impl/g$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/g$2;->a:Lcom/czhj/devicehelper/cnoaid/c;

    iget-object v1, p0, Lcom/czhj/devicehelper/cnoaid/impl/g$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/czhj/devicehelper/cnoaid/c;->a(Ljava/lang/String;)V

    return-void
.end method
