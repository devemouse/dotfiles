require 'highline/import'
require 'ezcrypto'

p "After Start"

tasks = [ 

  { 
    :name => 'kill_dropbox',
    :command => "taskkill /f /im Dropbox.exe",
    :time => 20
  }, 

  { 
    :name => 'kill_TSVNCache', 
    :command => "taskkill /f /im TSVNCache.exe", :time => 5
  }, 

  { 
    :name => 'start_Todolist', 
    :command => "C:\Darek\\app\\todolist\\ToDoList.exe",
    :time => 5    
  }, 

  { 
    :name => 'start_dropbox', 
    :command => "C:\\Documents and Settings\\synowiecd\\Application Data\\Dropbox\\bin\\Dropbox.exe", 
    :time => 7*60
  }, 

]

pass=EzCrypto::Key.generate

key = pass.encrypt ask("Enter your password:  ") { |q| q.echo = "*" }

current_tasks = %x[schtasks]

tasks.each do |task|
   if current_tasks =~ /#{task[:name]}/ then
      system("schtasks /delete /tn #{task[:name]} /f")
   end

   system("schtasks /create /RU synowiecd /RP #{pass.decrypt(key)} /sc ONCE /tn #{task[:name]} /tr \"" +
          task[:command] +
          "\" /st " +
          (Time.now + (task[:time]*60)).strftime("%H:%M:%S") )
end
pass = nil
keu = nil

current_tasks = %x[schtasks]

puts current_tasks

