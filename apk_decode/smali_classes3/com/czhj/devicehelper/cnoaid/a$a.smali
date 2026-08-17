.class Lcom/czhj/devicehelper/cnoaid/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/devicehelper/cnoaid/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/czhj/devicehelper/cnoaid/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/czhj/devicehelper/cnoaid/a;-><init>(Lcom/czhj/devicehelper/cnoaid/a$1;)V

    sput-object v0, Lcom/czhj/devicehelper/cnoaid/a$a;->a:Lcom/czhj/devicehelper/cnoaid/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
