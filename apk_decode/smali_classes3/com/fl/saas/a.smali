.class public abstract Lcom/fl/saas/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/fl/saas/adx/util/CommConstant;->getObjTag(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/fl/saas/a;->a:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/fl/saas/a;->b:Ljava/util/Map;

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/fl/saas/a;->a(Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private a(Ljava/lang/Class;)V
    .locals 0

    return-void
.end method
