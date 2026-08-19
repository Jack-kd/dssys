.class Lcom/umeng/analytics/pro/do$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/pro/em;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/analytics/pro/do$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/do$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/pro/do$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/do$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/do$a;-><init>(Lcom/umeng/analytics/pro/do$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public synthetic b()Lcom/umeng/analytics/pro/el;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/do$b;->a()Lcom/umeng/analytics/pro/do$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
