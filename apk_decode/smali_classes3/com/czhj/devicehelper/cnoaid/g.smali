.class public final Lcom/czhj/devicehelper/cnoaid/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "OAID"

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/czhj/devicehelper/cnoaid/g;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/czhj/devicehelper/cnoaid/g;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "<null>"

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method
