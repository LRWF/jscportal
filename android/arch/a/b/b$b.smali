.class Landroid/arch/a/b/b$b;
.super Landroid/arch/a/b/b$e;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/a/b/b$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/arch/a/b/b$c;Landroid/arch/a/b/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 287
    invoke-direct {p0, p1, p2}, Landroid/arch/a/b/b$e;-><init>(Landroid/arch/a/b/b$c;Landroid/arch/a/b/b$c;)V

    return-void
.end method


# virtual methods
.method a(Landroid/arch/a/b/b$c;)Landroid/arch/a/b/b$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 292
    iget-object p1, p1, Landroid/arch/a/b/b$c;->d:Landroid/arch/a/b/b$c;

    return-object p1
.end method

.method b(Landroid/arch/a/b/b$c;)Landroid/arch/a/b/b$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 297
    iget-object p1, p1, Landroid/arch/a/b/b$c;->c:Landroid/arch/a/b/b$c;

    return-object p1
.end method
