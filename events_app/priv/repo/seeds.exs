# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     EventsApp.Repo.insert!(%EventsApp.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias EventsApp.Repo
alias EventsApp.Users.User
alias EventsApp.Events.Event

alice = Repo.insert!(%User{name: "alice", email: "alice@mail.com"})
bob = Repo.insert!(%User{name: "bob", email: "bob@mail.com"})


Repo.insert!(%Event{
  user_id: alice.id,
  name: "fun event!",
  date: "12-12-2021",
  desc: "cool stuff will happen",
  inv: "bob@mail.com",
})

Repo.insert!(%Event{
  user_id: bob.id,
  name: "bobs party",
  date: "5-5-2021",
  desc: "cinco de mayo",
  inv: "",
})
