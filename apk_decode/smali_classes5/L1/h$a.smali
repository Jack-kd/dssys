.class public LL1/h$a;
.super LL1/h;
.source "SourceFile"

# interfaces
.implements LL1/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LL1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LL1/h;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, LL1/h;-><init>([BIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, LL1/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, LL1/d;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, LL1/h;->A0(LL1/d;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method
