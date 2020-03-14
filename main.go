package main

import (
	"log"
	"math/rand"
	"time"

	"github.com/gin-gonic/gin"
)

func randomInt() int {
	rand.Seed(time.Now().UnixNano())
	return rand.Intn(99999)
}

func main() {
	g := gin.Default()

	id := randomInt()

	g.GET("/", func(c *gin.Context) {

		c.JSON(200, map[string]interface{}{
			"status":    "healthy",
			"server_id": id,
		})
	})

	log.Fatalln(g.Run("0.0.0.0:8080"))
}
