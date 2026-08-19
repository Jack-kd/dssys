.class abstract Lcom/fl/saas/d1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/fl/saas/d1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fl/saas/d1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/fl/saas/d1;-><init>(Lcom/fl/saas/d1$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fl/saas/d1$b;->a:Lcom/fl/saas/d1;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a()Lcom/fl/saas/d1;
    .locals 1

    .line 1
    sget-object v0, Lcom/fl/saas/d1$b;->a:Lcom/fl/saas/d1;

    .line 2
    .line 3
    return-object v0
.end method
