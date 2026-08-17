.class abstract Lcom/fl/saas/J$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field private static final a:Lcom/fl/saas/J;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fl/saas/J;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/fl/saas/J;-><init>(Lcom/fl/saas/J$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fl/saas/J$e;->a:Lcom/fl/saas/J;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a()Lcom/fl/saas/J;
    .locals 1

    .line 1
    sget-object v0, Lcom/fl/saas/J$e;->a:Lcom/fl/saas/J;

    .line 2
    .line 3
    return-object v0
.end method
