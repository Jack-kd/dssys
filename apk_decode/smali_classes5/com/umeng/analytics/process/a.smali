.class interface abstract Lcom/umeng/analytics/process/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/process/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String; = "id"

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String; = ".db"

.field public static final e:Ljava/lang/String;

.field public static final f:I = 0x1

.field public static final g:I = 0x1

.field public static final h:Ljava/lang/String; = "_main_"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/umeng/analytics/pro/be;->b()Lcom/umeng/analytics/pro/be;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "subp"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/be;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/umeng/analytics/process/a;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {}, Lcom/umeng/analytics/pro/be;->b()Lcom/umeng/analytics/pro/be;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "subua"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/be;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/umeng/analytics/process/a;->c:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, "%s"

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ".db"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/umeng/analytics/process/a;->e:Ljava/lang/String;

    .line 48
    .line 49
    return-void
.end method
