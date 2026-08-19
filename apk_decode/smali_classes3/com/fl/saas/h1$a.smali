.class public Lcom/fl/saas/h1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/h1;


# direct methods
.method public constructor <init>(Lcom/fl/saas/h1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/h1$a;->a:Lcom/fl/saas/h1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/fl/saas/h1$a;->a:Lcom/fl/saas/h1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/fl/saas/h1;->a(Lcom/fl/saas/h1;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
